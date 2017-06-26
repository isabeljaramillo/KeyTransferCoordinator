require 'test_helper'

class LegTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def new_leg
    Leg.New (origin: "Chicago",
            destination: "New York",
            username: "Christopher",
            transit_mode: "airplane")
  end

  test "should not save leg without destination, origin, or username" do
    assert @leg.invalid?
    assert @leg.errors[:origin].any?
    assert @leg.errors[:destination].any?
    assert @leg.errors[:username].any?
    assert @leg.errors[:transit_mode].any?
  end 
end
