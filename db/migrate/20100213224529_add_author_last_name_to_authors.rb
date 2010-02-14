class AddAuthorLastNameToAuthors < ActiveRecord::Migration
  def self.up
    add_column :authors, :author_last_name, :string
  end

  def self.down
    remove_column :authors, :author_last_name
  end
end
