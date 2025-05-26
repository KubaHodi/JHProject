require "test_helper"

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get brands_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_url
    assert_response :success
  end

  test "should create brand" do
    assert_difference("Brand.count") do
      post brands_url, params: { brand: { founder_name: @brand.founder_name, founder_surname: @brand.founder_surname, name: @brand.name, production_date: @brand.production_date } }
    end

    assert_redirected_to brand_url(Brand.last)
  end

  test "should show brand" do
    get brand_url(@brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_url(@brand)
    assert_response :success
  end

  test "should update brand" do
    patch brand_url(@brand), params: { brand: { founder_name: @brand.founder_name, founder_surname: @brand.founder_surname, name: @brand.name, production_date: @brand.production_date } }
    assert_redirected_to brand_url(@brand)
  end

  test "should destroy brand" do
    assert_difference("Brand.count", -1) do
      delete brand_url(@brand)
    end

    assert_redirected_to brands_url
  end
end
