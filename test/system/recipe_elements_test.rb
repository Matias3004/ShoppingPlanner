require "application_system_test_case"

class RecipeElementsTest < ApplicationSystemTestCase
  setup do
    @recipe_element = recipe_elements(:one)
  end

  test "visiting the index" do
    visit recipe_elements_url
    assert_selector "h1", text: "Recipe elements"
  end

  test "should create recipe element" do
    visit recipe_elements_url
    click_on "New recipe element"

    fill_in "Name", with: @recipe_element.name
    fill_in "Quantity", with: @recipe_element.quantity
    fill_in "Recipe", with: @recipe_element.recipe_id
    click_on "Create Recipe element"

    assert_text "Recipe element was successfully created"
    click_on "Back"
  end

  test "should update Recipe element" do
    visit recipe_element_url(@recipe_element)
    click_on "Edit this recipe element", match: :first

    fill_in "Name", with: @recipe_element.name
    fill_in "Quantity", with: @recipe_element.quantity
    fill_in "Recipe", with: @recipe_element.recipe_id
    click_on "Update Recipe element"

    assert_text "Recipe element was successfully updated"
    click_on "Back"
  end

  test "should destroy Recipe element" do
    visit recipe_element_url(@recipe_element)
    click_on "Destroy this recipe element", match: :first

    assert_text "Recipe element was successfully destroyed"
  end
end
