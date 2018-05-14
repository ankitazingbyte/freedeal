require 'test_helper'

class CoupensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coupen = coupens(:one)
  end

  test "should get index" do
    get coupens_url
    assert_response :success
  end

  test "should get new" do
    get new_coupen_url
    assert_response :success
  end

  test "should create coupen" do
    assert_difference('Coupen.count') do
      post coupens_url, params: { coupen: { coupen: @coupen.coupen, description: @coupen.description, image: @coupen.image, title: @coupen.title } }
    end

    assert_redirected_to coupen_url(Coupen.last)
  end

  test "should show coupen" do
    get coupen_url(@coupen)
    assert_response :success
  end

  test "should get edit" do
    get edit_coupen_url(@coupen)
    assert_response :success
  end

  test "should update coupen" do
    patch coupen_url(@coupen), params: { coupen: { coupen: @coupen.coupen, description: @coupen.description, image: @coupen.image, title: @coupen.title } }
    assert_redirected_to coupen_url(@coupen)
  end

  test "should destroy coupen" do
    assert_difference('Coupen.count', -1) do
      delete coupen_url(@coupen)
    end

    assert_redirected_to coupens_url
  end
end
