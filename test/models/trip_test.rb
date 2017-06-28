require 'test_helper'

  class TripTest < ActiveSupport::TestCase
    def new_test
      Trip.new(title: "My Trip")
    end

    test "should not save author without origin, desitination, tripname,voucher or vouch" do
      @trip = Trip.new
      assert @trip.invalid?
      assert @trip.errors[:title].any?
    end
  end
