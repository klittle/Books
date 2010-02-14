class AddAuthorFirstNameToAuthors < ActiveRecord::Migration
  def self.up
    add_column :authors, :author_first_name, :string
  end

  def self.down
    remove_column :authors, :author_first_name
  end
end
