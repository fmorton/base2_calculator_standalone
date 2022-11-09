class CreateSalesLeadResponseRates < ActiveRecord::Migration
  def change
    create_table :sales_lead_response_rates do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_response_id", :default => 0, :null => false
      t.integer  "position", :default => 100, :null => false
      t.datetime "signature_meeting_start_at"
      t.datetime "signature_meeting_end_at"
      t.integer  "peak_rooms", :default => 0, :null => false
      t.integer  "hold_option", :default => 0, :null => false
      t.decimal  "room_rate_flat", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "room_rate_1b1p", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "room_rate_1b2p", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "room_rate_2b2p", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "room_rate_2b3p", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "room_rate_2b4p", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "room_rate_suite1b", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "room_rate_suite2b", :precision => 12, :scale => 2, :default => 0.0
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_response_rates", ["sales_lead_response_id"], :name => "index_response_rates_on_sales_lead_response_id"
  end
end