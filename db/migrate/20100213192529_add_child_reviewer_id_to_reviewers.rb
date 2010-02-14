class AddChildReviewerIdToReviewers < ActiveRecord::Migration
  def self.up
    add_column :reviewers, :child_reviewer_id, :integer
  end

  def self.down
    remove_column :reviewers, :child_reviewer_id
  end
end
