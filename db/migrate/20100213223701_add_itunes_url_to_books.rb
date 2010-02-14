class AddItunesUrlToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :itunes_url, :string
  end

  def self.down
    remove_column :books, :itunes_url
  end
end
