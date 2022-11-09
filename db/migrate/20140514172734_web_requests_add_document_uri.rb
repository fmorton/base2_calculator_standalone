class WebRequestsAddDocumentUri < ActiveRecord::Migration
  def up
    add_column :web_requests, :document_uri, :text
    add_column :web_requests, :document_uri_mime_type, :text
  end

  def down
  end
end
