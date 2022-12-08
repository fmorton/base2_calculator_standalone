class CreateSupplierQualifications < ActiveRecord::Migration[7.0]
  def change
    create_table "supplier_qualifications", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.date "qualified_at"
      t.integer "qualified_by", default: 0, null: false
      t.integer "qualified_by_author_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
    end
  end
end