class AddBookIdToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :book_id, :integer
  end

  def self.down
    remove_column :books, :book_id
  end
end
