class ExtendedMeetingDatesAddCommentsFax < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :organization_comments, :text
    add_column :extended_meeting_dates, :contact_phone_fax, :string, :limit => 32
  end

  def down
  end
end
