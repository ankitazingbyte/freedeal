require 'test_helper'

class Product2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product2 = product2s(:one)
  end

  test "should get index" do
    get product2s_url
    assert_response :success
  end

  test "should get new" do
    get new_product2_url
    assert_response :success
  end

  test "should create product2" do
    assert_difference('Product2.count') do
      post product2s_url, params: { product2: { image: @product2.image, title: @product2.title, url: @product2.url } }
    end

    assert_redirected_to product2_url(Product2.last)
  end

  test "should show product2" do
    get product2_url(@product2)
    assert_response :success
  end

  test "should get edit" do
    get edit_product2_url(@product2)
    assert_response :success
  end

  test "should update product2" do
    patch product2_url(@product2), params: { product2: { image: @product2.image, title: @product2.title, url: @product2.url } }
    assert_redirected_to product2_url(@product2)
  end

  test "should destroy product2" do
    assert_difference('Product2.count', -1) do
      delete product2_url(@product2)
    end

    assert_redirected_to product2s_url
  end
end
