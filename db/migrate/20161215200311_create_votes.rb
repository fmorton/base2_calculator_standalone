class CreateVotes < ActiveRecord::Migration[7.0][5.0]
  def change
    create_table "votes", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.text "label"
      t.text "email"
      t.text "name"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.text "session_id"
      t.index ["email"], name: "index_votes_on_email"
      t.index ["label"], name: "index_votes_on_label"
      t.index ["session_id"], name: "index_votes_on_session_id"
    end
  end
end
