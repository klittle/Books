require 'test_helper'



class AuthorTest < ActiveSupport::TestCase
  
  fixtures  :authors
  
  def setup
    #@author = Author.find([:id])
  end
  
  def test_dog
    assert_equal 5, 5
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

  def test_unique_author
    # author = Author.new(:author_last_name   => authors(:Munson).author_last_name,
    author = Author.new(:author_last_name   => "Munson",
                        :author_first_name  => "Derek",
                        :author_id          => 1)
                        
    assert !author.save
    #assert_equal "has already been taken", author.errors.on(:author_last_name)
    assert_equal "This id is already in use", author.errors.on(:author_id)
  end
end
