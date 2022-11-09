class AddAresIdSupport < ActiveRecord::Migration[6.0]
  def change
    add_column :supplier_organizations, :ares_id, :text
    add_column :supplier_organizations, :ares_uri, :text
  end
end
