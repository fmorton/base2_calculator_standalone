class CreateListMakers < ActiveRecord::Migration[7.0]
  def change
    create_table "list_makers", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.text "name"
      t.text "title"
      t.text "email"
      t.text "organization_name"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.integer "tagmap_id", default: 0, null: false
      t.index ["person_id", "created_by"], name: "index_list_makers_on_person_id_and_created_by"
      t.index ["tagmap_id"], name: "index_list_makers_on_tagmap_id"
    end
  end
end
