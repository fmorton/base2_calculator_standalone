class WebConventionsRearrangeUris < ActiveRecord::Migration
  def up
    add_column :web_conventions, :external_description_1, :text
    add_column :web_conventions, :external_description_2, :text
    add_column :web_conventions, :external_description_3, :text
    add_column :web_conventions, :external_description_4, :text
    add_column :web_conventions, :external_description_5, :text
    add_column :web_conventions, :external_description_6, :text

    add_column :web_conventions, :external_uri_1, :text
    add_column :web_conventions, :external_uri_2, :text
    add_column :web_conventions, :external_uri_3, :text
    add_column :web_conventions, :external_uri_4, :text
    add_column :web_conventions, :external_uri_5, :text
    add_column :web_conventions, :external_uri_6, :text

    add_column :web_conventions, :logo_uri, :text

    WebConvention.find_each do |web_convention|
      web_convention.external_description_1 = web_convention.external_description
      web_convention.external_description_2 = web_convention.optional_description_1
      web_convention.external_description_3 = web_convention.optional_description_2
      web_convention.external_description_4 = nil
      web_convention.external_description_5 = nil
      web_convention.external_description_6 = nil

      web_convention.external_uri_1 = web_convention.external_uri
      web_convention.external_uri_2 = web_convention.optional_uri_1
      web_convention.external_uri_3 = web_convention.optional_uri_2
      web_convention.external_uri_4 = nil
      web_convention.external_uri_5 = nil
      web_convention.external_uri_6 = nil

      web_convention.logo_uri = web_convention.image_uri
      web_convention.image_uri = nil

      web_convention.save!
    end

    remove_column :web_conventions, :external_description
    remove_column :web_conventions, :optional_description_1
    remove_column :web_conventions, :optional_description_2
    remove_column :web_conventions, :external_uri
    remove_column :web_conventions, :optional_uri_1
    remove_column :web_conventions, :optional_uri_2
  end

  def down
  end
end
