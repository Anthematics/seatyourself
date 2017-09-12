require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get restaurants_resources_url
    assert_response :success
  end

end
