require 'test_helper'

class LatestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latest = latests(:one)
  end

  test "should get index" do
    get latests_url
    assert_response :success
  end

  test "should get new" do
    get new_latest_url
    assert_response :success
  end

  test "should create latest" do
    assert_difference('Latest.count') do
      post latests_url, params: { latest: { description: @latest.description, discount: @latest.discount, image: @latest.image, link: @latest.link, title: @latest.title } }
    end

    assert_redirected_to latest_url(Latest.last)
  end

  test "should show latest" do
    get latest_url(@latest)
    assert_response :success
  end

  test "should get edit" do
    get edit_latest_url(@latest)
    assert_response :success
  end

  test "should update latest" do
    patch latest_url(@latest), params: { latest: { description: @latest.description, discount: @latest.discount, image: @latest.image, link: @latest.link, title: @latest.title } }
    assert_redirected_to latest_url(@latest)
  end

  test "should destroy latest" do
    assert_difference('Latest.count', -1) do
      delete latest_url(@latest)
    end

    assert_redirected_to latests_url
  end
end
