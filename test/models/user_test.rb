require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
      @user = User.new(name: "sllt", email: "HellO@sllt.me", 
        password: "hello123", password_confirmation: "hello123")
  end

  test "should be valid" do
    assert @user.valid?
  end


  test "should email downcase" do
    @user.save
    assert_equal @user.email, "hello@sllt.me"
  end
end
