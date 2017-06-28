require 'test_helper'

  class UserTest < ActiveSupport::TestCase
    def new_test
      User.new(name:     "Bart Graves",
               uid:       "345445609",
               email:     "graves@gmail.com",
               community: "Chicago Area",
               voucher:   "My Friend Dave",
               vouched:   true)
    end

    test "should not save user without name, email uid, or community" do
      @user = User.new
      assert @user.invalid?
      assert @user.errors[:name].any?
      assert @user.errors[:email].any?
      assert @user.errors[:uid].any?
      assert @user.errors[:community].any?
    end
  end
