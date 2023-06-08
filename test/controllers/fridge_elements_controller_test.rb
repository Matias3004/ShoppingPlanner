require "test_helper"

class FridgeElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fridge_element = fridge_elements(:one)
  end

  test "should get index" do
    get fridge_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_fridge_element_url
    assert_response :success
  end

  test "should create fridge_element" do
    assert_difference("FridgeElement.count") do
      post fridge_elements_url, params: { fridge_element: { fridge_id: @fridge_element.fridge_id, name: @fridge_element.name, quantity: @fridge_element.quantity } }
    end

    assert_redirected_to fridge_element_url(FridgeElement.last)
  end

  test "should show fridge_element" do
    get fridge_element_url(@fridge_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_fridge_element_url(@fridge_element)
    assert_response :success
  end

  test "should update fridge_element" do
    patch fridge_element_url(@fridge_element), params: { fridge_element: { fridge_id: @fridge_element.fridge_id, name: @fridge_element.name, quantity: @fridge_element.quantity } }
    assert_redirected_to fridge_element_url(@fridge_element)
  end

  test "should destroy fridge_element" do
    assert_difference("FridgeElement.count", -1) do
      delete fridge_element_url(@fridge_element)
    end

    assert_redirected_to fridge_elements_url
  end
end
