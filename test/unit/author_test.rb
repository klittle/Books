require 'test_helper'



class AuthorTest < ActiveSupport::TestCase
  
  fixtures  :authors
  
  def setup
    #@author = Author.find([:id])
  end
    
  
  def test_should_create_author
    author = Author.new
      
    author.author_last_name  =    "Silverstein"
    author.author_first_name  =   "Shel"
    author.author_id          =   10
    
    assert_equal author.author_last_name, "Silverstein"
    assert_equal author.author_first_name, "Shel"
    assert_equal author.author_id, 10
    
    assert author.save
    
  end

  def test_unique_author_id
    author = Author.new(:author_last_name   => authors(:Munson).author_last_name,
                        :author_first_name  => "Derek",
                        :author_id          => 1)
                        
    assert !author.save
    assert_equal "This id is already in use", author.errors.on(:author_id)
  end
  
  def test_filled_in_author_name
    author = Author.new(:author_last_name   =>  "",
                        :author_first_name  =>  "Bob")
                        
    assert !author.save
    assert_equal "This must be filled in", author.errors.on(:author_last_name)
  end
  
  
end
