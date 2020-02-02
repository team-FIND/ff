require "application_system_test_case"

class MainCategoriesTest < ApplicationSystemTestCase
  setup do
    @main_category = main_categories(:one)
  end

  test "visiting the index" do
    visit main_categories_url
    assert_selector "h1", text: "Main Categories"
  end

  test "creating a Main category" do
    visit main_categories_url
    click_on "New Main Category"

    fill_in "Name", with: @main_category.name
    click_on "Create Main category"

    assert_text "Main category was successfully created"
    click_on "Back"
  end

  test "updating a Main category" do
    visit main_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @main_category.name
    click_on "Update Main category"

    assert_text "Main category was successfully updated"
    click_on "Back"
  end

  test "destroying a Main category" do
    visit main_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main category was successfully destroyed"
  end
end
