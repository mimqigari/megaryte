require "test_helper"

class GetAccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @get_access = get_accesses(:one)
  end

  test "should get index" do
    get get_accesses_url
    assert_response :success
  end

  test "should get new" do
    get new_get_access_url
    assert_response :success
  end

  test "should create get_access" do
    assert_difference('GetAccess.count') do
      post get_accesses_url, params: { get_access: { approval: @get_access.approval, early_access: @get_access.early_access, email: @get_access.email, full_name: @get_access.full_name, monthly: @get_access.monthly, phne: @get_access.phne, use_case: @get_access.use_case, use_region: @get_access.use_region, website: @get_access.website, work_place: @get_access.work_place, work_vertical: @get_access.work_vertical } }
    end

    assert_redirected_to get_access_url(GetAccess.last)
  end

  test "should show get_access" do
    get get_access_url(@get_access)
    assert_response :success
  end

  test "should get edit" do
    get edit_get_access_url(@get_access)
    assert_response :success
  end

  test "should update get_access" do
    patch get_access_url(@get_access), params: { get_access: { approval: @get_access.approval, early_access: @get_access.early_access, email: @get_access.email, full_name: @get_access.full_name, monthly: @get_access.monthly, phne: @get_access.phne, use_case: @get_access.use_case, use_region: @get_access.use_region, website: @get_access.website, work_place: @get_access.work_place, work_vertical: @get_access.work_vertical } }
    assert_redirected_to get_access_url(@get_access)
  end

  test "should destroy get_access" do
    assert_difference('GetAccess.count', -1) do
      delete get_access_url(@get_access)
    end

    assert_redirected_to get_accesses_url
  end
end
