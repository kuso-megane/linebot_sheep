require 'test_helper'

class LinebotControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get linebot_main_url
    assert_response :success
  end

end
