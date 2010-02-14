class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.column  :book_id,  :integer
      t.column  :review,   :text
      t.column  :review_rating,  :integer
      t.column  :reviewer_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
