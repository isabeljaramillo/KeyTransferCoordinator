require 'test_helper'

class LegsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legs = legs(:one)
  end

  test "should get new" do
    get legs_new_url
    assert_response :success
  end

  test "should create leg" do
    assert_difference ('Leg.count') do
      post legs_url, params: { leg: { }  }
    end

    assert_redirected_to leg_url(Leg.last)
  end

  test "should show leg" do
    get leg_url(@leg)
    assert_response :success
  end

  test "should get edit" do
    get edit_leg_url(@leg)
    assert_response :success
  end

  test "should destroy leg" do
    assert_difference('Leg.count', -1) do
      delete leg_url(@leg)
    end

    assert_redirected_to legs_url
  end
end
