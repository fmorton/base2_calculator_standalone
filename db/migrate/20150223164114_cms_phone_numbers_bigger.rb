class CmsPhoneNumbersBigger < ActiveRecord::Migration
  def change
    change_column :events, :event_phone, :string, :limit => 64
    change_column :events, :event_phone, :string, :limit => 64
    change_column :events, :tickets_phone, :string, :limit => 64

    change_column :organizations, :phone_main, :string, :limit => 64
    change_column :organizations, :phone_fax, :string, :limit => 64
    change_column :organizations, :phone_toll_free, :string, :limit => 64

    change_column :people, :phone_home, :string, :limit => 64
    change_column :people, :phone_mobile, :string, :limit => 64
    change_column :people, :phone_work, :string, :limit => 64
    change_column :people, :phone_fax, :string, :limit => 64
    change_column :people, :phone_direct, :string, :limit => 64
    change_column :people, :phone_toll_free, :string, :limit => 64
    change_column :people, :phone_tdd, :string, :limit => 64
  end
end
