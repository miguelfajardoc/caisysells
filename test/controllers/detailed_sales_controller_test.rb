require "test_helper"

class DetailedSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detailed_sale = detailed_sales(:one)
  end

  test "should get index" do
    get detailed_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_detailed_sale_url
    assert_response :success
  end

  test "should create detailed_sale" do
    assert_difference("DetailedSale.count") do
      post detailed_sales_url, params: { detailed_sale: { current_price: @detailed_sale.current_price, discount: @detailed_sale.discount, product_id: @detailed_sale.product_id, quantity: @detailed_sale.quantity, sale_id: @detailed_sale.sale_id, total_price: @detailed_sale.total_price } }
    end

    assert_redirected_to detailed_sale_url(DetailedSale.last)
  end

  test "should show detailed_sale" do
    get detailed_sale_url(@detailed_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_detailed_sale_url(@detailed_sale)
    assert_response :success
  end

  test "should update detailed_sale" do
    patch detailed_sale_url(@detailed_sale), params: { detailed_sale: { current_price: @detailed_sale.current_price, discount: @detailed_sale.discount, product_id: @detailed_sale.product_id, quantity: @detailed_sale.quantity, sale_id: @detailed_sale.sale_id, total_price: @detailed_sale.total_price } }
    assert_redirected_to detailed_sale_url(@detailed_sale)
  end

  test "should destroy detailed_sale" do
    assert_difference("DetailedSale.count", -1) do
      delete detailed_sale_url(@detailed_sale)
    end

    assert_redirected_to detailed_sales_url
  end
end
