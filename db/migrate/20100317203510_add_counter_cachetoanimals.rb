class AddCounterCacheforanimalstobookcharacters < ActiveRecord::Migration
  def self.up
    add_column :bookcharacters, :books_count, :integer, :default => 0
    Bookcharacter.find(:all).each do |s|
      #need to check format for bookcharacter.animal_type.find.(:all)
      s.update_attribute :books_count, s.books.length
    end
  end

  def self.down
    remove_column :animals, :books_count
  end
end
