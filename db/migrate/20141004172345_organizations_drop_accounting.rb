class OrganizationsDropAccounting < ActiveRecord::Migration
  def up
    remove_column :organizations, :accounting_id
    remove_column :organizations, :accounting_balance
    remove_column :organizations, :accounting_last_payment_at
  end

  def down
  end
end
