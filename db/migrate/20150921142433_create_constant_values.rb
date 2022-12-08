class CreateConstantValues < ActiveRecord::Migration[7.0]
  def change
    create_table "constant_values", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "label", limit: 96
      t.string "name", limit: 96
      t.string "reference", limit: 96
      t.string "value", limit: 96
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.index ["label", "reference"], name: "index_constant_values_on_label_and_reference"
    end
  end
end
