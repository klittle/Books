require 'test_helper'


class BookTest < ActiveSupport::TestCase
  
  fixtures :books 
  
  test "invalid with empty attributes" do
    book = Book.new
    assert !product.valid?
    assert book.errors.invalid?(:title)
    assert book.errors.invalid?(:author_last_name)
    assert book.errors.invalid?(:author_first_name)
  end
end
