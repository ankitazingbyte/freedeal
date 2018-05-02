require 'test_helper'

class Product4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product4 = product4s(:one)
  end

  test "should get index" do
    get product4s_url
    assert_response :success
  end

  test "should get new" do
    get new_product4_url
    assert_response :success
  end

  test "should create product4" do
    assert_difference('Product4.count') do
      post product4s_url, params: { product4: { image: @product4.image, title: @product4.title, url: @product4.url } }
    end

    assert_redirected_to product4_url(Product4.last)
  end

  test "should show product4" do
    get product4_url(@product4)
    assert_response :success
  end

  test "should get edit" do
    get edit_product4_url(@product4)
    assert_response :success
  end

  test "should update product4" do
    patch product4_url(@product4), params: { product4: { image: @product4.image, title: @product4.title, url: @product4.url } }
    assert_redirected_to product4_url(@product4)
  end

  test "should destroy product4" do
    assert_difference('Product4.count', -1) do
      delete product4_url(@product4)
    end

    assert_redirected_to product4s_url
  end
end
