require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "the h3 defaults to books when no genre is supplied" do
    get books_path
    assert_select "h3", "Books"
  end

  test "the h3 uses the genre supplied if books exist" do
    get books_path, params: { genre: "Classic" }
    assert_select "h3", "Classic"
  end
end
