#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
class PasswordController < Base2CmsController
  include Base2TaggedController
  include Base2AutoCompleteController
  include Base2DestroyConnectionController
  include Base2Reflection

  layout :set_layout

  def index
    password_setup(true)

    puts "TEST: @email is #{@email.inspect}"
    if @email.blank?
      session[:notice] = "Missing Email Address" if request.post?
    elsif (people = Person.where("lower(people.email)=?", @email.downcase)).to_a.empty?
      session[:notice] = "Unknown Email Address [1]" if request.post?
    else
      puts "TEST: @email is #{@email.downcase.inspect}"
      if (people = LogonPrivilege.reset_password_filter(@context, people)).empty?
        session[:notice] = "Unknown Email Address [2]" if request.post?
      else
        session[:notice] = "An email has been sent to you with instructions to reset your password"

        people_ids = people.collect { |o| o.id }.join('/')
        @unencrypted_token_string = "#{@unencrypted_token_string},#{people_ids}"
        puts "TEST: @unencrypted_token_string is #{@unencrypted_token_string.inspect}"
        @token_string = @unencrypted_token_string.reversible_encrypt
        puts "TEST: @token_string is #{@token_string.inspect}"

        reset_uri = "/password/reset_password?token=#{@token_string}"
        reset_uri = "#{reset_uri}&layout=#{session[:layout]}" unless session[:layout].blank?
        @temp_reset_uri = "http://#{request.host}:#{request.port}#{reset_uri}"

puts "TEST: reset_uri is #{reset_uri.inspect}"
        #TODO: hostname needs to come from the context_organization
        full_uri = "https://www.economicscalculator.com#{reset_uri}"
        email_queue = EmailQueue.new_using_config('reset_password')
puts "TEST: full_uri is #{full_uri.inspect}"

        email_queue.to = @email
        email_queue.content = String.new
        email_queue.content << "You recently initiated a password reset for your Econmics Calculator ID. To complete the process, click the link below.<br />\n<br />\n"
        email_queue.content << "<a href='#{full_uri}'>Reset Now &gt;</a><br />\n<br />\n"
        email_queue.content << "If you didn’t make this request, it's likely that another user has entered your email address by mistake and your account is still secure."
        email_queue.content << " If you believe an unauthorized person has accessed your account, you can reset your password at "
        email_queue.content << "<a href='https://www.economicscalculator.com/password'>www.economicscalculator.com</a>"
        email_queue.content << ".<br />\n"
        #email_queue.content << full_uri
        email_queue.content << "<br />\n"

        email_queue.save!

        begin
          email_queue.send_grid
        rescue => email_exception
          session[:notice] = "We are having a problem sending you an email to reset your password"
          logger.error email_exception.message
        end
      end
    end
  end

  def reset_password
    password_setup(!(request.post?))

    if request.post?
      if @password.blank? || @verify_password.blank? || (@password != @verify_password)
        session[:notice] = "Passwords Do Not Match"
        redirect_to "/password/reset_password?token=#{@token_string}"
        return
      end

      if @token_people_ids.empty?
        session[:notice] = "Unknown Email Address [3]"
        redirect_to "/password/reset_password?token=#{@token_string}"
        return
      else
        if (multi_person = Person.where(:id => @token_people_ids).to_a).empty?
          session[:notice] = "Unknown Email Address [4]"
          redirect_to "/password/reset_password?token=#{@token_string}"
          return
        end

        multi_person.each do |person|
          person.password = @password
          person.save!
        end

        redirect_to ((@token_destination.blank?) ? @destination : @token_destination)
      end
    end
  end

  private

  def password_setup(reset_notice)
    if params[:token]
      decrypted_token = params[:token].decrypt.split(',') #rescue []

      @token_string = params[:token].escaped_string
      @token_context_organization_id = decrypted_token[0]
      @token_email = decrypted_token[1]
      @token_destination = decrypted_token[2]
      @token_people_ids = decrypted_token[3].split('/') #rescue []
    end

    if @email.not_blank?
      @unencrypted_token_string = "#{@context_organization.id.to_s},#{@email},#{@destination}"
      @token_string = @unencrypted_token_string.reversible_encrypt
    end

    @email = params[:email]
    @password = params[:password]
    @verify_password = params[:verify_password]

    @destination = params[:destination]
    @destination = "/logon" if @destination.blank?

    if @email.not_blank? && @token_string.nil?
      @unencrypted_token_string = "#{@context_organization.id.to_s},#{@email},#{@destination}"
      @token_string = @unencrypted_token_string.reversible_encrypt.escaped_string
    end

    puts "TEST: @context_organization is #{@context_organization.inspect}"
    puts "TEST: @token_string=====#{@token_string.inspect}"
    puts "TEST: @token_context_organization_id====#{@token_context_organization_id.inspect}"
    puts "TEST: @token_email====#{@token_email.inspect}"
    puts "TEST: @token_destination====#{@token_destination.inspect}"
    puts "TEST: @context_organization_id=====#{@context_organization_id.inspect}"
    puts "TEST: @email=====#{@email.inspect}"
    puts "TEST: @destination=====#{@destination.inspect}"
    puts "TEST: @password=====#{@password.inspect}"
    puts "TEST: @verify_password=====#{@verify_password.inspect}"
  end
end
