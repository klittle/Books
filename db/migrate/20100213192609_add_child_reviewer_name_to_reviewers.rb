class AddChildReviewerNameToReviewers < ActiveRecord::Migration
  def self.up
    add_column :reviewers, :child_reviewer_name, :string
  end

  def self.down
    remove_column :reviewers, :child_reviewer_name
  end
end
