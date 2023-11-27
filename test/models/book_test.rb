require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "does not save a book without a title" do
    book = Book.new
    assert_not book.save
  end

  test "does not save a book without an author_name" do
    book = Book.new(title: "Some Book")
    assert_not book.save
  end

  test "does not save a book without a genre" do
    book = Book.new(title: "Some Book", author_name: "Some Author")
    assert_not book.save
  end

  test "does not save a book without an ISBN" do
    book = Book.new(title: "Some Book", author_name: "Some Author", genre: "Mystery")
    assert_not book.save
  end

  test "does not save a book with an ISBN that is not 13 characters" do
    book = Book.new(title: "Some Book", author_name: "Some Author", genre: "Mystery", isbn_13: "1234")
    assert_not book.save
  end

  test "does not save a book with a duplicate title" do
    book = Book.new(title: "Some Book", author_name: "Some Author", genre: "Mystery", isbn_13: "1234567891234")
    assert book.save
    book2 = Book.new(title: "Some Book", author_name: "Some Author", genre: "Mystery", isbn_13: "1234567891234")
    assert_not book2.save
  end
end
