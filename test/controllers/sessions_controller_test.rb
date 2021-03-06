require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  test "Should prompt for login" do
    get login_url
    assert_response :success
  end

  test "should login" do
    dave = users(:one)
    post login_url, params: { email: dave.email, password: 'secret' }
    assert_redirected_to admin_url
    assert_equal dave.id, session[:user_id]
  end

  test "should fail login" do
    dave = users(:one)
    post login_url, params: { email: dave.email, password: 'wrong' }
    assert_redirected_to login_url
  end

  test "should logout" do
    delete logout_url
    assert_redirected_to inicio_path
  end

end
