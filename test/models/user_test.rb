require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "does not save a user without an email" do
    user = User.new(email: nil, password: nil, password_confirmation: nil)
    assert_not user.save
  end

  test "does not save a user without a password" do
    user = User.new(email: "sometestemail@email.com")
    assert_not user.save
  end

  test "does save a user" do
    user = User.new(email: "sometestemail@email.com", password: "something", password_confirmation: "something")
    assert user.save
  end

  test "does not save a user with a duplicate email" do
    user = User.new(email: "sometestemail@email.com", password: "something", password_confirmation: "something")
    assert user.save
    user2 = User.new(email: "sometestemail@email.com", password: "something", password_confirmation: "something")
    assert_not user2.save
  end
end
