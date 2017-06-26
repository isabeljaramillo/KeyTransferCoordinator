require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def new_user
    User.new(username: "BartJolly",
            email: "BartJolly@gmail.com",
            voucher: "Stanley89",
            vouched: "Badboy23" )
  test "should not save user without username, email, voucher or vouched"
    @user = User.new
    assert @user.invalid?
    assert @user.errors[:username].any?
    assert @user.errors[:email].any?
    assert @user.errors[:voucher].any?
    assert @user.errors[:vouched].any?
end
