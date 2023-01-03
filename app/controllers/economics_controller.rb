#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
class EconomicsController < Base2CvbController
  include Base2CmsApplication

  layout 'economics'

  def index
    if already_logged_on?
      @start_date = @context.get_persistent_parameter(:start_date, :ec_start_date)
      @day_count = @context.get_persistent_parameter(:day_count, :ec_day_count)
      @location_labels = @context.get_persistent_parameter(:location_labels, :ec_location_labels)
      #TODO: generalize using occupancy_segment tagmaps (.DEFAULT. flag)
      @location_labels = [ '180302',  '18097' ] if @location_labels.nil?
      @segments = @context.get_persistent_parameter(:segments, :ec_segments)
      @segments = [ 'transient_', 'contract_', 'group_' ] if @segments.nil?

      start_date_as_date = (@start_date.blank?) ? Date.today : Date.parse_string(@start_date)
      start_date_as_date = start_date_as_date - 1.day  if params[:previous_day]
      start_date_as_date = start_date_as_date - 7.days if params[:previous_week]
      start_date_as_date = start_date_as_date + 1.day  if params[:next_day]
      start_date_as_date = start_date_as_date + 7.days if params[:next_week]

      @start_date = session[:start_date] = start_date_as_date.strftime("%m/%d/%Y")

      @meeting_date = MeetingDate.new
      @meeting_date.housing_1_at = start_date_as_date
      @meeting_date.housing_day_count = @day_count.to_i
      @meeting_date.housing_day_count = 7 if @meeting_date.housing_day_count.to_i < 1
      @meeting_date.housing_day_count = 14 if @meeting_date.housing_day_count.to_i > 14

      set_group_rooms_available(@meeting_date)

      @day_count = 'Display days' if @day_count.to_i <= 0

      set_occupancy(@location_labels, @segments)

      @context.write_context_cache
    end
  end

  def create
    index
  end

  def economics_show_setup
    if(context_organization = (ContextOrganization.find(@context.organization_id) rescue nil)).not_nil?
      @report_logo_uri = context_organization.smart_report_logo_uri
      @report_footer = context_organization.report_footer

      @report_host_city = context_organization.name
    end
  end

  def show
    #if secure_location?
      unless(@meeting_date = (params.key?('jupiter')) ? MeetingDate.context_scope.find_by_data_source_id(params[:id]) : (MeetingDate.shared_context_scope.find(params[:id]) rescue nil)).nil?
        @meeting_date_room_block = @meeting_date.room_block
        @meeting_date_economic_impact = @meeting_date.meeting_date_economic_impact
        @meeting_date_financial_commitment = @meeting_date.meeting_date_financial_commitment
        @meeting = @meeting_date.meeting
        @organization = @meeting_date.organization

        set_group_rooms_available(@meeting_date)

        location_labels = []

        add_city(location_labels, @meeting_date.host_city_id)
        add_city(location_labels, @meeting_date.competing_city_1_id)
        add_city(location_labels, @meeting_date.competing_city_2_id)
        add_city(location_labels, @meeting_date.competing_city_3_id)
        add_city(location_labels, @meeting_date.competing_city_4_id)
        add_city(location_labels, @meeting_date.competing_city_5_id)

        #TODO: generalize using occupancy_segment tagmaps (.DEFAULT. flag)
        location_labels.insert(0, '180302')
        location_labels.insert(0, '18097')
        location_labels.uniq!

        set_occupancy(location_labels, nil)

        economics_show_setup
      end
    #end
  end

  protected

  def set_occupancy(location_labels, segments)
    @occupancy_location_labels = location_labels
    @occupancy = {}
    @occupancy_hash_map = {}
    unless (days_of_week = Occupancy.days_of_week(@meeting_date.housing_1_at, @meeting_date.housing_day_count)).empty?
      location_labels.each do |label|
        @occupancy[label] = Occupancy.context_scope.where('(occupancy_week_and_day in (?))', days_of_week).where('(year>=?)', Time.now.year - 5).where('(segment_id=?)', label).order('occupancy_at desc').to_a
        @occupancy_hash_map[label] = OccupancyHashMap.new(@occupancy[label], segments)
      end
      @meeting_date_economics_hash = MeetingDateRoomFlow.economics_hash(days_of_week, @meeting_date.id)
    end
  end

  def set_group_rooms_available(meeting_date)
    @tap_report_summary_start_at = @meeting_date.housing_1_at
    @tap_report_summary_end_at = @meeting_date.housing_1_at + (@meeting_date.housing_day_count - 1).days
    @tap_report_summary_date_range = (@tap_report_summary_start_at..@tap_report_summary_end_at)
    @tap_report_summary = TapReportSummary.new(@tap_report_summary_start_at, @tap_report_summary_end_at)
  end

  def add_city(location_labels, city_id)
    unless city_id.nil?
      unless (city_to_add = add_city_lookup(city_id)).nil?
        location_labels << city_to_add
      end
    end
  end

  def add_city_lookup(city_id)
    #TODO: generalize using occupancy_segment tagmaps
    return '130101' if city_id == 1970                  # Atlanta CBD, GA
    return '480101' if city_id == 1972                  # Austin CBD, TX
    return '240101' if city_id == 1974                  # Baltimore CBD, MD
    return '14020' if city_id == 2220                   # Bloomington, IN
    return '250101' if city_id == 1979                  # Boston CBD/Airport, MA
    return '370101' if city_id == 1984                  # Charlotte CBD/Airport, SC
    return '170106' if city_id == 1986                  # Chicago CBD, IL
    return '390201' if city_id == 1987                  # Cincinnati Northwest, OH
    return '390402' if city_id == 1988                  # Cleveland CBD/Independence, OH
    return '390502' if city_id == 2271                  # Columbus CBD/Ohio State Univ, OH
    return '480201' if city_id == 1991                  # Dallas CBD/Market Center, TX
    return '80101' if city_id == 1993                   # Denver CBD, CO
    return '260101' if city_id == 1995                  # Detroit/Dearborn, MI
    return '21140' if city_id == 2722                   # Elkhart-Goshen, IN
    return '21780' if city_id == 1997                   # Evansville, IN-KY
    return '23060' if city_id == 2885                   # Fort Wayne, IN
    return '480410' if city_id == 2117                  # Houston CBD, TX
    return '180302' if city_id == 4208                  # Indianapolis CBD, IN
    return '290101' if city_id == 2188                  # Kansas City, KS
    return '29020' if city_id == 2805                   # Kokomo, IN
    return '29200' if city_id == 2007                   # Lafayette-West Lafayette, IN
    return '31080' if city_id == 2013                   # Los Angeles-Long Beach-Anaheim, CA
    return '210104' if city_id == 2014                  # Louisville CBD, KY
    return '470201' if city_id == 2015                  # Memphis CBD, TN
    return '33100' if city_id == 2017                   # Miami-Fort Lauderdale-West Palm Beach, FL
    return '33140' if city_id == 2952                   # Michigan City-La Porte, IN
    return '550302' if city_id == 2018                  # Milwaukee, WI
    return '270101' if city_id == 2019                  # Minneapolis CBD, MN
    return '34620' if city_id == 2764                   # Muncie, IN
    return '470301' if city_id == 2067                  # Nashville CBD, TN
    return '220101' if city_id == 2023                  # New Orleans CBD/French Quarter, LA
    return '360100' if city_id == 2078                  # New York, NY
    return '36420' if city_id == 2026                   # Oklahoma City, OK
    return '120403' if city_id == 2028                  # Orlando International Drive, FL
    return '420101' if city_id == 2031                  # Philadelphia CBD, PA
    return '40106' if city_id == 2032                   # Phoenix Central, AZ
    return '420204' if city_id == 2033                  # Pittsburgh CBD, PA
    return '410104' if city_id == 2034                  # Portland CBD, OR
    return '40140' if city_id == 2524                   # Riverside-San Bernardino-Ontario, CA
    return '490102' if city_id == 2042                  # Salt Lake CBD/Airport, UT
    return '480501' if city_id == 2043                  # San Antonio CBD, TX
    return '60601' if city_id == 2044                   # San Diego CBD, CA
    return '41860' if city_id == 2045                   # San Francisco-Oakland-Hayward, CA
    return '530106' if city_id == 2052                  # Seattle CBD, WA
    return '43780' if city_id == 2053                   # South Bend-Mishawaka, IN-MI
    return '290201' if city_id == 2172                  # St Louis CBD, MO
    return '45300' if city_id == 2057                   # Tampa-St. Petersburg-Clearwater, FL
    return '45460' if city_id == 2735                   # Terre Haute, IN
    return '47260' if city_id == 2434                   # Virginia Beach-Norfolk-Newport News, VA-NC
    return '110101' if city_id == 2070                  # Washington DC CBD

    #  unused non-city segments
    #return '15057' if city_id == xxxxxxxxxxx           # Hamilton County, IN
    #return '180000' if city_id == xxxxxxxxxxx          # Indiana
    #return '15097' if city_id == xxxxxxxxxxx           # Marion County, IN
    #return '0' if city_id == xxxxxxxxxxx               # United States

    # unused segments because matching city above
    #return '12060' if city_id == 1970                  # Atlanta-Sandy Springs-Roswell, GA
    #return '12420' if city_id == xxxxxxxxxxx           # Austin-Round Rock, TX
    #return '12580' if city_id == 1974                  # Baltimore-Columbia-Towson, MD
    #return '14460' if city_id == 1979                  # Boston-Cambridge-Newton, MA-NH
    #return '16740' if city_id == 1984                  # Charlotte-Concord-Gastonia, NC-SC
    #return '16980' if city_id == 1986                  # Chicago-Naperville-Elgin, IL-IN-WI
    #return '17140' if city_id == 1987                  # Cincinnati, OH-KY-IN
    #return '17460' if city_id == 1988                  # Cleveland-Elyria, OH
    #return '18140' if city_id == 2271                  # Columbus, OH
    #return '18020' if city_id == xxxxxxxxxxx           # Columbus, IN--unreachable duplicate city name (OH)
    #return '19100' if city_id == 1991                  # Dallas-Fort Worth-Arlington, TX
    #return '19740' if city_id == 1993                  # Denver-Aurora-Lakewood, CO
    #return '19820' if city_id == 1995                  # Detroit-Warren-Dearborn, MI
    #return '26420' if city_id == 2117                  # Houston-The Woodlands-Sugar Land, TX
    #return '180304' if city_id == 4208                 # Indianapolis Airport/Speedway, IN
    #return '180305' if city_id == 4208                 # Indianapolis North Loop, IN
    #return '180303' if city_id == 4208                 # Indianapolis Rural Areas, IN
    #return '180301' if city_id == 4208                 # Indianapolis Southeast Area, IN
    #return '26900' if city_id == 4208                  # Indianapolis-Carmel-Anderson, IN
    #return '28140' if city_id == 2188                  # Kansas City, MO-KS
    #return '31140' if city_id == 2014                  # Louisville/Jefferson County, KY-IN
    #return '32820' if city_id == 2015                  # Memphis, TN-MS-AR
    #return '33340' if city_id == 2018                  # Milwaukee-Waukesha-West Allis, WI
    #return '33460' if city_id == 2019                  # Minneapolis-St. Paul-Bloomington, MN-WI
    #return '34980' if city_id == 2067                  # Nashville-Davidson--Murfreesboro--Franklin, TN
    #return '35380' if city_id == 2023                  # New Orleans-Metairie, LA
    #return '35620' if city_id == 2078                  # New York-Newark-Jersey City, NY-NJ-PA
    #return '400102' if city_id == 2026                 # Oklahoma City North/West, OK
    #return '36740' if city_id == 2028                  # Orlando-Kissimmee-Sanford, FL
    #return '37980' if city_id == 2031                  # Philadelphia-Camden-Wilmington, PA-NJ-DE-MD
    #return '38060' if city_id == 2032                  # Phoenix-Mesa-Scottsdale, AZ
    #return '38300' if city_id == 2033                  # Pittsburgh, PA
    #return '38900' if city_id == 2034                  # Portland-Vancouver-Hillsboro, OR-WA
    #return '41620' if city_id == 2042                  # Salt Lake City, UT
    #return '41700' if city_id == 2043                  # San Antonio-New Braunfels, TX
    #return '41740' if city_id == 2044                  # San Diego-Carlsbad, CA
    #return '42660' if city_id == 2052                  # Seattle-Tacoma-Bellevue, WA
    #return '41180' if city_id == 2172                  # St. Louis, MO-IL
    #return '47900' if city_id == 2070                  # Washington-Arlington-Alexandria, DC-VA-MD-WV

    # unused segments ignored (obsolete segment ids)
    #return '350300' if city_id == xxxxxxxxxxx          # Albuquerque, NM
    #return '60100' if city_id == xxxxxxxxxxx           # Anaheim/Santa Ana, CA
    #return '10300' if city_id == xxxxxxxxxxx           # Birmingham, AL
    #return '250100' if city_id == xxxxxxxxxxx          # Boston, MA
    #return '450400' if city_id == xxxxxxxxxxx          # Charleston, SC
    #return '370100' if city_id == xxxxxxxxxxx          # Charlotte, NC-SC
    #return '390400' if city_id == xxxxxxxxxxx          # Cleveland, OH
    #return '260100' if city_id == xxxxxxxxxxx          # Detroit, MI
    #return '120100' if city_id == xxxxxxxxxxx          # Fort Lauderdale, FL
    #return '370200' if city_id == xxxxxxxxxxx          # Greensboro/Winston Salem, NC
    #return '450100' if city_id == xxxxxxxxxxx          # Greenville/Spartanburg, SC
    #return '18057' if city_id == xxxxxxxxxxx           # Hamilton County, IN
    #return '480409' if city_id == xxxxxxxxxxx          # Houston Medical Center/Reliant Stadium, TX
    #return '180300' if city_id == xxxxxxxxxxx          # Indianapolis, IN
    #return '120200' if city_id == xxxxxxxxxxx          # Jacksonville, FL
    #return '470100' if city_id == xxxxxxxxxxx          # Knoxville, TN
    #return '60200' if city_id == xxxxxxxxxxx           # Los Angeles/Long Beach, CA
    #return '18097' if city_id == xxxxxxxxxxx           # Marion County, IN
    #return '470200' if city_id == xxxxxxxxxxx          # Memphis, TN-AR-MS
    #return '120300' if city_id == xxxxxxxxxxx          # Miami/Hialeah, FL
    #return '550300' if city_id == xxxxxxxxxxx          # Milwaukee, WI
    #return '450500' if city_id == xxxxxxxxxxx          # Myrtle Beach, SC
    #return '340200' if city_id == xxxxxxxxxxx          # Newark, NJ
    #return '510100' if city_id == xxxxxxxxxxx          # Norfolk/Virginia Beach, VA
    #return '150200' if city_id == xxxxxxxxxxx          # Oahu Island, HI
    #return '60300' if city_id == xxxxxxxxxxx           # Oakland, CA
    #return '400100' if city_id == xxxxxxxxxxx          # Oklahoma City, OK
    #return '120402' if city_id == xxxxxxxxxxx          # Orlando Central, FL
    #return '420203' if city_id == xxxxxxxxxxx          # Pittsburgh North Area, PA
    #return '410100' if city_id == xxxxxxxxxxx          # Portland, OR
    #return '370300' if city_id == xxxxxxxxxxx          # Raleigh/Durham/Chapel Hill, NC
    #return '510200' if city_id == xxxxxxxxxxx          # Richmond/Petersburg, VA
    #return '60400' if city_id == xxxxxxxxxxx           # Riverside/San Bernardino, CA
    #return '60500' if city_id == xxxxxxxxxxx           # Sacramento, CA
    #return '490100' if city_id == xxxxxxxxxxx          # Salt Lake City/Ogden, UT
    #return '60700' if city_id == xxxxxxxxxxx           # San Francisco/San Mateo, CA
    #return '60800' if city_id == xxxxxxxxxxx           # San Jose/Santa Cruz, CA
    #return '530100' if city_id == xxxxxxxxxxx          # Seattle, WA
    #return '120500' if city_id == xxxxxxxxxxx          # Tampa/St Petersburg, FL
    #return '40300' if city_id == xxxxxxxxxxx           # Tucson, AZ

    nil
  end
end
