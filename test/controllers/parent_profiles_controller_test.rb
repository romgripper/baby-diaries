require 'test_helper'

class ParentProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_profile = parent_profiles(:one)
  end

  test "should get index" do
    get parent_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_profile_url
    assert_response :success
  end

  test "should create parent_profile" do
    assert_difference('ParentProfile.count') do
      post parent_profiles_url, params: { parent_profile: { edit: @parent_profile.edit, show: @parent_profile.show } }
    end

    assert_redirected_to parent_profile_url(ParentProfile.last)
  end

  test "should show parent_profile" do
    get parent_profile_url(@parent_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_profile_url(@parent_profile)
    assert_response :success
  end

  test "should update parent_profile" do
    patch parent_profile_url(@parent_profile), params: { parent_profile: { edit: @parent_profile.edit, show: @parent_profile.show } }
    assert_redirected_to parent_profile_url(@parent_profile)
  end

  test "should destroy parent_profile" do
    assert_difference('ParentProfile.count', -1) do
      delete parent_profile_url(@parent_profile)
    end

    assert_redirected_to parent_profiles_url
  end
end
