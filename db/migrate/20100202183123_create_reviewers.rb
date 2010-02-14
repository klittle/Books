class CreateReviewers < ActiveRecord::Migration
  def self.up
    create_table :reviewers do |t|
      t.column  :last_name, :string
      t.column  :first_name,  :string
      t.column  :email,  :string
      t.column  :log_in,  :string
      t.column  :password,  :integer
      t.column  :reviewer_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :reviewers
  end
end
