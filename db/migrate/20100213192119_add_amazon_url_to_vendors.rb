class AddAmazonUrlToVendors < ActiveRecord::Migration
  def self.up
    add_column :vendors, :amazon_url, :string
  end

  def self.down
    remove_column :vendors, :amazon_url
  end
end
