require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "should create sale" do
    visit sales_url
    click_on "New sale"

    fill_in "Account", with: @sale.account_id
    fill_in "Client", with: @sale.client_id
    fill_in "Creator", with: @sale.creator_id
    check "Payed" if @sale.payed
    fill_in "Total", with: @sale.total
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "should update Sale" do
    visit sale_url(@sale)
    click_on "Edit this sale", match: :first

    fill_in "Account", with: @sale.account_id
    fill_in "Client", with: @sale.client_id
    fill_in "Creator", with: @sale.creator_id
    check "Payed" if @sale.payed
    fill_in "Total", with: @sale.total
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "should destroy Sale" do
    visit sale_url(@sale)
    click_on "Destroy this sale", match: :first

    assert_text "Sale was successfully destroyed"
  end
end
