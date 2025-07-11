require "application_system_test_case"

class DetailedSalesTest < ApplicationSystemTestCase
  setup do
    @detailed_sale = detailed_sales(:one)
  end

  test "visiting the index" do
    visit detailed_sales_url
    assert_selector "h1", text: "Detailed sales"
  end

  test "should create detailed sale" do
    visit detailed_sales_url
    click_on "New detailed sale"

    fill_in "Current price", with: @detailed_sale.current_price
    fill_in "Discount", with: @detailed_sale.discount
    fill_in "Product", with: @detailed_sale.product_id
    fill_in "Quantity", with: @detailed_sale.quantity
    fill_in "Sale", with: @detailed_sale.sale_id
    fill_in "Total price", with: @detailed_sale.total_price
    click_on "Create Detailed sale"

    assert_text "Detailed sale was successfully created"
    click_on "Back"
  end

  test "should update Detailed sale" do
    visit detailed_sale_url(@detailed_sale)
    click_on "Edit this detailed sale", match: :first

    fill_in "Current price", with: @detailed_sale.current_price
    fill_in "Discount", with: @detailed_sale.discount
    fill_in "Product", with: @detailed_sale.product_id
    fill_in "Quantity", with: @detailed_sale.quantity
    fill_in "Sale", with: @detailed_sale.sale_id
    fill_in "Total price", with: @detailed_sale.total_price
    click_on "Update Detailed sale"

    assert_text "Detailed sale was successfully updated"
    click_on "Back"
  end

  test "should destroy Detailed sale" do
    visit detailed_sale_url(@detailed_sale)
    click_on "Destroy this detailed sale", match: :first

    assert_text "Detailed sale was successfully destroyed"
  end
end
