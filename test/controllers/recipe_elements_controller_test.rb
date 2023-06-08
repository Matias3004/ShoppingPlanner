require "test_helper"

class RecipeElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_element = recipe_elements(:one)
  end

  test "should get index" do
    get recipe_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_element_url
    assert_response :success
  end

  test "should create recipe_element" do
    assert_difference("RecipeElement.count") do
      post recipe_elements_url, params: { recipe_element: { name: @recipe_element.name, quantity: @recipe_element.quantity, recipe_id: @recipe_element.recipe_id } }
    end

    assert_redirected_to recipe_element_url(RecipeElement.last)
  end

  test "should show recipe_element" do
    get recipe_element_url(@recipe_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_element_url(@recipe_element)
    assert_response :success
  end

  test "should update recipe_element" do
    patch recipe_element_url(@recipe_element), params: { recipe_element: { name: @recipe_element.name, quantity: @recipe_element.quantity, recipe_id: @recipe_element.recipe_id } }
    assert_redirected_to recipe_element_url(@recipe_element)
  end

  test "should destroy recipe_element" do
    assert_difference("RecipeElement.count", -1) do
      delete recipe_element_url(@recipe_element)
    end

    assert_redirected_to recipe_elements_url
  end
end
