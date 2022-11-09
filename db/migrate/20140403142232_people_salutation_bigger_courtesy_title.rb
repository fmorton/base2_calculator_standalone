class PeopleSalutationBiggerCourtesyTitle < ActiveRecord::Migration
  def up
    remove_column :people, :courtesy_title
    add_column :people, :courtesy_title_id, :integer, :default => 0, :null => false
    add_column :people, :salutation, :string, :limit => 64

    remove_column :extended_meeting_dates, :contact_courtesy_title
    add_column :extended_meeting_dates, :contact_courtesy_title_id, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :contact_salutation, :string, :limit => 64
  end

  def down
  end
end
