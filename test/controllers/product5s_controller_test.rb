require 'test_helper'

class Product5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product5 = product5s(:one)
  end

  test "should get index" do
    get product5s_url
    assert_response :success
  end

  test "should get new" do
    get new_product5_url
    assert_response :success
  end

  test "should create product5" do
    assert_difference('Product5.count') do
      post product5s_url, params: { product5: { image: @product5.image, title: @product5.title, url: @product5.url } }
    end

    assert_redirected_to product5_url(Product5.last)
  end

  test "should show product5" do
    get product5_url(@product5)
    assert_response :success
  end

  test "should get edit" do
    get edit_product5_url(@product5)
    assert_response :success
  end

  test "should update product5" do
    patch product5_url(@product5), params: { product5: { image: @product5.image, title: @product5.title, url: @product5.url } }
    assert_redirected_to product5_url(@product5)
  end

  test "should destroy product5" do
    assert_difference('Product5.count', -1) do
      delete product5_url(@product5)
    end

    assert_redirected_to product5s_url
  end
end
