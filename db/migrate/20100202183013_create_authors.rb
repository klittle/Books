class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.column  :website, :string
      t.column  :itunes,  :string
      t.column  :author_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :authors
  end
end
