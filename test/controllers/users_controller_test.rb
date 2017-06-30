require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user        = users(:michael)
    @other_user  = users(:archer)
  end

  test "should redirect index whe not logged in" do
    get users_path
    assert_redirect_to login_url
  end
end
