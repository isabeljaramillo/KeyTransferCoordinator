require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def new_user
    User.new(name: "BartJolly",
             uid: "123r34523",
             email: "BartJolly@gmail.com",
             community: "Chicago Area",
             voucher: "Stanley89",
             vouched: 0)
  end

  test "should not save user without username, email, community voucher or vouched"
    @user = User.new
    assert @user.invalid?
    assert @user.errors[:name].any?
    assert @user.errors[:email].any?
    assert @user.errors[:uid].any?
    assert @user.errors[:community].any?
    assert @user.errors[:voucher].any?
    assert @user.errors[:vouched].any?
  end
end
