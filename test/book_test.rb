require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
class BookTest < Minitest::Test

  def test_it_exists
    book1 = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_instance_of Book, book1
  end

  def test_it_has_attributes
    book1 = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_equal "To Kill a Mockingbird", book1.title
    assert_equal "Harper Lee", book1.author
    assert_equal 1960, book1.publication_year
  end

end
