require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user  = User.new(name: "Example User", username: "ExampleUserName", password: "123-abc!", bio: "This is an example bio.")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "username should be present" do
    @user.username = "     "
    assert_not @user.valid?
  end

  # Need to check how to do this?
  # test "name should not be too short" do
  #   @user.name = "a" * 51
  #   assert_not @user.valid?
  # end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  # Need to check how to do this?
  # test "username should not be too short" do
  #   @user.name = "a" * 51
  #   assert_not @user.valid?
  # end

  test "username should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "username should be unique" do
    duplicate_user = @user.dup
    assert_not duplicate_user.valid?
  end

end
