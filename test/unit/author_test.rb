require 'test_helper'



class AuthorTest < ActiveSupport::TestCase
  
  fixtures  :authors
  
  def setup
    @author = Author.find(params[:id])
  end
  
  
  test "unique author" do
    author = Author.new(:author_last_name   => authors(:Munson).author_last_name,
                        :author_first_name  => "xxx",
                        :author_id          => 1)
                        
    assert !product.save
    assert_equal "has already been taken", product.errors.on(:author_last_name)
  end
end
