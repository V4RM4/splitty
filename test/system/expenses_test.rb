require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "should create expense" do
    visit expenses_url
    click_on "New expense"

    fill_in "Expense amount", with: @expense.expense_amount
    fill_in "Expense datetime", with: @expense.expense_datetime
    fill_in "Expense group", with: @expense.expense_group_id
    fill_in "Expense name", with: @expense.expense_name
    fill_in "Expense notes", with: @expense.expense_notes
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "should update Expense" do
    visit expense_url(@expense)
    click_on "Edit this expense", match: :first

    fill_in "Expense amount", with: @expense.expense_amount
    fill_in "Expense datetime", with: @expense.expense_datetime
    fill_in "Expense group", with: @expense.expense_group_id
    fill_in "Expense name", with: @expense.expense_name
    fill_in "Expense notes", with: @expense.expense_notes
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "should destroy Expense" do
    visit expense_url(@expense)
    click_on "Destroy this expense", match: :first

    assert_text "Expense was successfully destroyed"
  end
end
