require "test_helper"

class ProductListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_list = product_lists(:one)
  end

  test "should get index" do
    get product_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_product_list_url
    assert_response :success
  end

  test "should create product_list" do
    assert_difference("ProductList.count") do
      post product_lists_url, params: { product_list: { description: @product_list.description, productList_id: @product_list.productList_id } }
    end

    assert_redirected_to product_list_url(ProductList.last)
  end

  test "should show product_list" do
    get product_list_url(@product_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_list_url(@product_list)
    assert_response :success
  end

  test "should update product_list" do
    patch product_list_url(@product_list), params: { product_list: { description: @product_list.description, productList_id: @product_list.productList_id } }
    assert_redirected_to product_list_url(@product_list)
  end

  test "should destroy product_list" do
    assert_difference("ProductList.count", -1) do
      delete product_list_url(@product_list)
    end

    assert_redirected_to product_lists_url
  end
end
