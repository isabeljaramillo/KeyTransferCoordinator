require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

def new_test
  Test.new(origin: "Chicago",
          destination: "Hong Kong",
          triptitle: "My Trip",
          voucher: "Voucher1",
          vouched: "Vouched1")
        end

  test "should not save author without origin, desitination, tripname,
        voucher or vouch" do
    @trip = trip.new
    assert @trip.invalid?
    assert @trip.errors[:origin].any?
    assert @trip.errors[:destination].any?
    assert @trip.errors[:tripname].any?
    assert @trip.errors[:voucher].any?
    assert @trip.errors[:vouched].any?
  end
end
