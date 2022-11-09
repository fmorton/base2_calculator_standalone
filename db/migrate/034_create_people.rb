class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "person_id", :default => 0, :null => false
      t.string   "alternate_email", :limit => 64
      t.date     "birthday_at"
      t.boolean  "citizen"
      t.integer  "birth_location_id", :default => 0, :null => false
      t.string   "courtesy_title", :limit => 8
      t.string   "drivers_license_id", :limit => 32
      t.boolean  "drivers_license_valid"
      t.string   "nickname", :limit => 32
      t.integer  "number_people_in_household", :default => 0, :null => false
      t.string   "other_id_issuer", :limit => 32
      t.string   "other_id_issuer_id", :limit => 32
      t.string   "phone_home", :limit => 32
      t.string   "phone_mobile", :limit => 32
      t.string   "phone_work", :limit => 32
      t.integer  "spouse_id", :default => 0, :null => false
      t.string   "ssn", :limit => 16
      t.boolean  "veteran"
      t.string   "emergency_contact_1", :limit => 128
      t.string   "emergency_contact_2", :limit => 128
      t.string   "emergency_contact_3", :limit => 128
      t.string   "emergency_contact_4", :limit => 128
      t.integer  "high_school_graduation_year", :default => 0, :null => false
      t.boolean  "head_of_household"
      t.integer  "household_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.string   "exact_target_id", :limit => 32
      t.boolean  "exact_target_confirmed", :default => false, :null => false
      t.boolean  "exact_target_needs_sync", :default => false, :null => false
      t.string   "name_first", :limit => 32
      t.string   "name_middle", :limit => 32
      t.string   "name_last", :limit => 32
      t.string   "name", :limit => 64
      t.string   "encrypted_password", :limit => 64
      t.string   "email", :limit => 64
      t.boolean  "superuser", :default => false, :null => false
      t.string   "time_zone", :limit => 64
      t.integer  "gender_id", :default => 0, :null => false
      t.integer  "ethnicity_id", :default => 0, :null => false
      t.integer  "marital_status_id", :default => 0, :null => false
      t.datetime "activation_at"
      t.integer  "activation_author_id", :default => 0, :null => false
      t.text     "activation_message"
      t.string   "activations", :limit => 32
      t.string   "title", :limit => 128
      t.integer  "organization_id", :default => 0, :null => false
      t.integer  "view_type_id", :default => 0, :null => false
      t.integer  "supplier_position_id", :default => 0, :null => false
      t.text     "personal_information"
      t.integer  "personal_interest_id", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "people", ["data_source_id"], :name => "index_people_on_data_source_id"
    add_index "people", ["person_id"], :name => "index_people_on_person_id"
  end
end