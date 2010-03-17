class Author < ActiveRecord::Base
  has_many  :books
  validates_presence_of :author_first_name, :author_last_name, :author_id,
                        :on       =>  :create,
                        :message  =>  "This must be filled in"
  
  validates_uniqueness_of  :author_id,
                           :on      => :create,
                           :message =>  "This id is already in use"
  
end
