class ContextOrganizationsJmailConfig < ActiveRecord::Migration
  def change
    add_column :context_organizations, :jmail_server, :string, :limit => 64
    add_column :context_organizations, :jmail_username, :string, :limit => 64
    add_column :context_organizations, :jmail_password, :string, :limit => 64
    add_column :context_organizations, :jmail_port, :integer, :default => 0, :null => false
    add_column :context_organizations, :jmail_domain_name, :string, :limit => 64
    add_column :context_organizations, :jmail_bucket_name, :string, :limit => 32
    add_column :context_organizations, :jmail_note_type_id, :integer, :default => 0, :null => false
    add_column :context_organizations, :jmail_secure_with_ssl, :boolean, :default => true, :null => false
  end
end
