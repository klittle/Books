class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.column  :book_id, :string
      t.column  :amazon_id, :integer
      t.column  :isbn, :integer
      t.column  :price, :decimal
      t.column  :amazon_jpg,  :string

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
