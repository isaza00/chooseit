require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "1 should not save user without email" do
    user = User.new(password: "1234")
    assert_not user.save, "Saved the user without a email"
  end

  test "2 should not save user without proper email" do
    user = User.new(email: "notanactualeimail", password: "1234")
    assert_not user.save, "Saved the user without an actual email"
  end

  test "3 should not save user with an email longer than 255 characters" do
    user = User.new(email: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@email.com", password: "1234")
    assert_not user.save, "Saved the user with an email longer than 255 characters"
  end

  test "4 should not save user without a password" do
    user = User.new(email: "valid@email.com")
    assert_not user.save, "Saved the user without a password"
  end

  test "5 should not save user with a password no longer than 4 characters" do
    user = User.new(email: "valid@email.com", password: "123")
    assert_not user.save, "Saved the user with password too short"
  end

  test "6 should create a new user" do
    assert User.create(email: "valid1@email.com", password: "1234"), "Didn't save a properly created user"
  end

  test "8 should NOT create a user with a repeated email" do
    user = User.create(email: "valid@email.com", password: "1234")
    user1 = User.create(email: "valid@email.com", password: "1234")
    assert_not user1.valid?, "Saved an already existing user"
  end

  test "9 Successfully create and destroy a user" do
    User.create(email: "valid1@email.com", password: "1234")
    assert User.exists?(email: "valid1@email.com"), "Didn't find the created user"
    user = User.find_by(email: "valid1@email.com")
    user.destroy
    assert_not User.exists?(email: "valid1@email.com"), "Didn't destroy the created user"
  end

end
