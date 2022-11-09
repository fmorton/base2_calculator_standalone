class PeopleAddPreferenceEmailDelimiter < ActiveRecord::Migration
  def change
    add_column :people, :preference_email_delimiter, :string, :limit => 8
  end
end
