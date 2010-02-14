class Book < ActiveRecord::Base
  validates_presence_of   :author_last_name, :on => :update,  :message => "Please fill in!"
  validates_presence_of   :author_first_name, :on => :update,  :message => "Please fill in!"
  validates_presence_of   :ISBN, :on => :update,  :message => "Please fill in!"
  validates_presence_of   :title, :on => :update,  :message => "Please fill in!"
  validates_uniqueness_of :ISBN , :on => :update,  :message => "Already in Database!"

  has_one :author
  has_many :bookcharacter
end
