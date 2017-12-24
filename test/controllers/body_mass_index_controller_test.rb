require 'test_helper'

class BodyMassIndexControllerTest < ActionDispatch::IntegrationTest
  test "should get calculator" do
    get body_mass_index_calculator_url
    assert_response :redirect
  end

end
