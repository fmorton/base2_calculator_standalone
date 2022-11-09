class AccountingMoveToSupplierOrganization < ActiveRecord::Migration
  def up
    add_column :supplier_organizations, :accounting_id, :string, :limit => 32
    add_column :supplier_organizations, :accounting_last_payment_at, :date
    add_column :supplier_organizations, :accounting_last_payment_product_id, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :accounting_last_payment_amount, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :supplier_organizations, :accounting_balance, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :supplier_organizations, :accounting_balance_30_days, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :supplier_organizations, :accounting_balance_60_days, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :supplier_organizations, :accounting_balance_90_days, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :supplier_organizations, :accounting_balance_120_plus_days, :decimal, :precision => 12, :scale => 2, :default => 0.0

    Organization.where("accounting_id is not null").where("accounting_id!=''").all.each do |organization|
      if (supplier_organization = organization.supplier_organization)
        supplier_organization.accounting_id = organization.accounting_id
        supplier_organization.save!
      end
    end
    
    remove_column :extended_meeting_dates, :organization_accounting_id
    remove_column :extended_meeting_dates, :organization_accounting_balance
    remove_column :extended_meeting_dates, :organization_accounting_last_payment_at
    remove_column :extended_meeting_dates, :contact_organization_accounting_id
    remove_column :extended_meeting_dates, :contact_organization_accounting_balance
    remove_column :extended_meeting_dates, :contact_organization_accounting_last_payment_at

    remove_column :subscriptions, :balance_current
    remove_column :subscriptions, :balance_30_days
    remove_column :subscriptions, :balance_60_days
    remove_column :subscriptions, :balance_90_days
    remove_column :subscriptions, :balance_120_plus_days
    remove_column :subscriptions, :balance_total
  end

  def down
  end
end
