class AddUserIdToReviewers < ActiveRecord::Migration
  def self.up
    add_column :reviewers, :user_id, :integer
  end

  def self.down
    remove_column :reviewers, :user_id
  end
end
