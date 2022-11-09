class PersonAddExtendedEmailSignature < ActiveRecord::Migration[5.0]
  def change
    add_column :extended_meeting_dates, :contact_email_signature, :text
  end
end
