class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :title
      t.string :author_last_name
      t.string :author_first_name
      t.integer :isbn
      t.integer :amazon_id
      t.string :author_website
      t.boolean :animal_category
      t.boolean :animal_type
      t.decimal :price
      t.text :description
      t.string :cover_picture

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
