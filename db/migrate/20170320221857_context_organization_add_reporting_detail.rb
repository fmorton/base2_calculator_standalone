class ContextOrganizationAddReportingDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :context_organizations, :report_logo_uri, :text
    add_column :context_organizations, :report_footer, :text
  end
end
