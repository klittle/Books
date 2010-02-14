class AddParentReviewerNameToReviewers < ActiveRecord::Migration
  def self.up
    add_column :reviewers, :parent_reviewer_name, :string
  end

  def self.down
    remove_column :reviewers, :parent_reviewer_name
  end
end
