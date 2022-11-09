class UseFewerDatetimesCms < ActiveRecord::Migration
  def up
    change_column :contents, :available_at, :date
    change_column :contents, :display_at, :date
    change_column :contents, :expire_at, :date
    change_column :coupons, :available_at, :date
    change_column :coupons, :display_at, :date
    change_column :coupons, :expire_at, :date
    change_column :events, :date_range_end_at, :date
    change_column :events, :date_range_start_at, :date
    change_column :events, :feature_available_at, :date
    change_column :events, :feature_expire_at, :date
    change_column :event_dates, :event_at, :date
    change_column :event_date_patterns, :end_at, :date
    change_column :event_date_patterns, :exception_1_at, :date
    change_column :event_date_patterns, :exception_2_at, :date
    change_column :event_date_patterns, :exception_3_at, :date
    change_column :event_date_patterns, :exception_4_at, :date
    change_column :event_date_patterns, :start_at, :date
    change_column :notes, :followup_completed_at, :date
    change_column :notes, :followup_needed_at, :date
    change_column :notes, :note_at, :date
    change_column :organizations, :accounting_last_payment_at, :date
    change_column :people, :activation_at, :date
    change_column :people, :birthday_at, :date
    change_column :web_details, :available_at, :date
    change_column :web_details, :customer_rating_at, :date
    change_column :web_details, :date_range_end_at, :date
    change_column :web_details, :date_range_start_at, :date
    change_column :web_details, :display_at, :date
    change_column :web_details, :expire_at, :date
  end

  def down
  end
end
