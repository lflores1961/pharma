require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get inicio_url
    assert_response :success
  end

  test "should get productos" do
    get store_path
    assert_response :success
  end

  test "should get contacto" do
    get contacto_url
    assert_response :success
  end

end
