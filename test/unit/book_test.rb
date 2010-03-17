require 'test_helper'


class BookTest < ActiveSupport::TestCase
  
  fixtures :books 
  
  # def test_invalid_with_empty_attributes 
  #     book = Book.new
  #     #assert !book.valid?
  #     #assert book.errors.invalid?(:title)
  #     #assert book.errors.invalid?(:author_last_name)
  #     #assert book.errors.invalid?(:author_first_name)
  #   end
   
   def test_unique_book_isbn
   
    book = Book.new(:title                => "",
                        :isbn             => "978-0811827782",
                        :book_id          => 1)
                        
    assert !book.save
    assert_equal "Please fill in!", book.errors.on(:title)
    assert_equal "Already in Database!", book.errors.on(:isbn)
  end
end
