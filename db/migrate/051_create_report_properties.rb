class CreateReportProperties < ActiveRecord::Migration[7.0]
  def change
    create_table "report_properties", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "report_id", default: 0, null: false
      t.string "name", limit: 128, null: false
      t.integer "position", default: 0, null: false
      t.integer "parameter_type", default: 0, null: false
      t.text "parameter_value"
      t.text "parameter_value_end"
      t.text "parameter_value_ids"
      t.integer "style_type", default: 0, null: false
      t.text "style_value"
      t.boolean "required", default: false, null: false
      t.boolean "combined", default: false, null: false
      t.boolean "grouped", default: false, null: false
      t.boolean "hidden", default: false, null: false
      t.integer "horizontal_alignment", default: 0, null: false
      t.integer "vertical_alignment", default: 0, null: false
      t.boolean "wrap_text", default: false, null: false
      t.integer "font_color", default: 0, null: false
      t.integer "background_color", default: 0, null: false
      t.integer "font_name", default: 0, null: false
      t.integer "font_style", default: 0, null: false
      t.integer "font_size", default: 0, null: false
      t.string "column_width", limit: 16
      t.integer "created_by", default: 0
      t.integer "updated_by", default: 0
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.boolean "constant", default: false
    end
  end
end