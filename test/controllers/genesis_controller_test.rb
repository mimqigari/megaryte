require "test_helper"

class GenesisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genesis_index_url
    assert_response :success
  end
end
