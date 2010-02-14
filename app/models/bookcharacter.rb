class Bookcharacter < ActiveRecord::Base
  has_many  :book
  belongs_to_many :book
   
  
end
