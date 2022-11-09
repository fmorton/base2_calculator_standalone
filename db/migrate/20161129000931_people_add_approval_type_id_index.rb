class PeopleAddApprovalTypeIdIndex < ActiveRecord::Migration[5.0]
  def change
    add_index "people", ["approval_type_id"], :name => "index_approval_type_id"
  end
end
