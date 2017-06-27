require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def new_user
    User.new(username:       "Rails2Ruin",
             email:          "rails2ruin@gmail.com",
             community:      "Chicago Area",
             voucher:        "BobbyJoe3",
             vouched:        "3CPO")
  end

  test "should not save user without username, email, community
        voucher, or vouched" do
    @user = User.new
    assert @user.invalid?
    assert @user.errors[:username].any?
    assert @user.errors[:email].any?
    assert @user.errors[:community].any?
    assert @user.errors[:voucher].any?
    assert @user.errors[:vouched].any?
  end
end
