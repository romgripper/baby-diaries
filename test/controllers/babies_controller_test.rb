require 'test_helper'

class BabiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby = babies(:one)
  end

  test "should get index" do
    get babies_url
    assert_response :success
  end

  test "should get new" do
    get new_baby_url
    assert_response :success
  end

  test "should create baby" do
    assert_difference('Baby.count') do
      post babies_url, params: { baby: { birth_height: @baby.birth_height, birth_weight: @baby.birth_weight, birthday: @baby.birthday, name: @baby.name, nick: @baby.nick, parent_id: @baby.parent_id } }
    end

    assert_redirected_to baby_url(Baby.last)
  end

  test "should show baby" do
    get baby_url(@baby)
    assert_response :success
  end

  test "should get edit" do
    get edit_baby_url(@baby)
    assert_response :success
  end

  test "should update baby" do
    patch baby_url(@baby), params: { baby: { birth_height: @baby.birth_height, birth_weight: @baby.birth_weight, birthday: @baby.birthday, name: @baby.name, nick: @baby.nick, parent_id: @baby.parent_id } }
    assert_redirected_to baby_url(@baby)
  end

  test "should destroy baby" do
    assert_difference('Baby.count', -1) do
      delete baby_url(@baby)
    end

    assert_redirected_to babies_url
  end
end
