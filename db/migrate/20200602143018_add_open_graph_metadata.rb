class AddOpenGraphMetadata < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :meta_og_uri, :text
    add_column :contents, :meta_og_type, :text
    add_column :contents, :meta_og_title, :text
    add_column :contents, :meta_og_description, :text
    add_column :contents, :meta_og_image_uri, :text

    add_column :events, :meta_og_uri, :text
    add_column :events, :meta_og_type, :text
    add_column :events, :meta_og_title, :text
    add_column :events, :meta_og_description, :text
    add_column :events, :meta_og_image_uri, :text

    add_column :organizations, :meta_og_uri, :text
    add_column :organizations, :meta_og_type, :text
    add_column :organizations, :meta_og_title, :text
    add_column :organizations, :meta_og_description, :text
    add_column :organizations, :meta_og_image_uri, :text

    add_column :redirects, :meta_og_uri, :text
    add_column :redirects, :meta_og_type, :text
    add_column :redirects, :meta_og_title, :text
    add_column :redirects, :meta_og_description, :text
    add_column :redirects, :meta_og_image_uri, :text
  end
end
