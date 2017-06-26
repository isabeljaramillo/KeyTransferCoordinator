require 'test_helper'

  class TripTest < ActiveSupport::TestCase
    def new_test
      Trip.new(origin: "Chicago",
            destination: "Hong Kong",
            triptitle: "My Trip")
    end

    test "should not save author without origin, desitination, tripname,voucher or vouch" do
      @trip = Trip.new
      assert @trip.invalid?
      assert @trip.errors[:origin].any?
      assert @trip.errors[:destination].any?
      assert @trip.errors[:tripname].any?
    end
  end
