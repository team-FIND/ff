require 'test_helper'

class MainCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_category = main_categories(:one)
  end

  test "should get index" do
    get main_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_main_category_url
    assert_response :success
  end

  test "should create main_category" do
    assert_difference('MainCategory.count') do
      post main_categories_url, params: { main_category: { name: @main_category.name } }
    end

    assert_redirected_to main_category_url(MainCategory.last)
  end

  test "should show main_category" do
    get main_category_url(@main_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_category_url(@main_category)
    assert_response :success
  end

  test "should update main_category" do
    patch main_category_url(@main_category), params: { main_category: { name: @main_category.name } }
    assert_redirected_to main_category_url(@main_category)
  end

  test "should destroy main_category" do
    assert_difference('MainCategory.count', -1) do
      delete main_category_url(@main_category)
    end

    assert_redirected_to main_categories_url
  end
end
