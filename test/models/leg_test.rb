require 'test_helper'

  class LegTest < ActiveSupport::TestCase

    def new_leg
      Leg.new(origin: "Chicago",
              destination: "New York")
    end

    test "should not save leg without destination or origin" do
      @leg = Leg.new
      assert @leg.invalid?
      assert @leg.errors[:origin].any?
      assert @leg.errors[:destination].any?
    end
  end
