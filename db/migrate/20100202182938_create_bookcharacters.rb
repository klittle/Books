class CreateBookcharacters < ActiveRecord::Migration
  def self.up
    create_table :bookcharacters do |t|
      t.column  :animal_category, :string
      t.column  :animal_type, :string
      t.column  :book_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :bookcharacters
  end
end
