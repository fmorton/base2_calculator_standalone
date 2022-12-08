class CreateContentOrganizationConnections < ActiveRecord::Migration[7.0]
  def change
    create_table "content_organization_connections", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "content_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.string "data_source_owner_id", limit: 32
    end
  end
end