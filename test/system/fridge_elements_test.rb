require "application_system_test_case"

class FridgeElementsTest < ApplicationSystemTestCase
  setup do
    @fridge_element = fridge_elements(:one)
  end

  test "visiting the index" do
    visit fridge_elements_url
    assert_selector "h1", text: "Fridge elements"
  end

  test "should create fridge element" do
    visit fridge_elements_url
    click_on "New fridge element"

    fill_in "Fridge", with: @fridge_element.fridge_id
    fill_in "Name", with: @fridge_element.name
    fill_in "Quantity", with: @fridge_element.quantity
    click_on "Create Fridge element"

    assert_text "Fridge element was successfully created"
    click_on "Back"
  end

  test "should update Fridge element" do
    visit fridge_element_url(@fridge_element)
    click_on "Edit this fridge element", match: :first

    fill_in "Fridge", with: @fridge_element.fridge_id
    fill_in "Name", with: @fridge_element.name
    fill_in "Quantity", with: @fridge_element.quantity
    click_on "Update Fridge element"

    assert_text "Fridge element was successfully updated"
    click_on "Back"
  end

  test "should destroy Fridge element" do
    visit fridge_element_url(@fridge_element)
    click_on "Destroy this fridge element", match: :first

    assert_text "Fridge element was successfully destroyed"
  end
end
