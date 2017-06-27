require 'test_helper'

class LegTest < ActiveSupport::TestCase
  def new_leg
    Leg.new(origin: "Chicago",
            destination: "New York",
            username: "Christopher",
            transit_mode: "airplane")
  end

  test "should not save leg without destination, origin, username or
        transit_mode" do
    @leg = Leg.new
    assert @leg.invalid?
    assert @leg.errors[:origin].any?
    assert @leg.errors[:destination].any?
    assert @leg.errors[:username].any?
    assert @leg.errors[:transit_mode].any?
  end
end
