class User < ActiveRecord::Base
  has_many  :reviews, :through => :user_id
  has_many  :books,   :through => :user_id
  belongs_to  :reviewer
   
   
  validates_presence_of       :login
  validates_length_of         :login, :within =>  5..25,
                              :message => 'Login must be 5 to 25 characters long.'
  validates_uniqueness_of     :login, :case_sensitive =>  false,
                              :message => 'Sorry, Login already taken. Please enter a new one.'
  
  validates_presence_of       :email
  
  validates_presence_of       :password
  validates_presence_of       :password, :within  =>  6..15,
                              :message => 'Password must be 6 to 15 characters long.'
  validates_confirmation_of   :password 
  
end
