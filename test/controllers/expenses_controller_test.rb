require "test_helper"

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense = expenses(:one)
  end

  test "should get index" do
    get expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_url
    assert_response :success
  end

  test "should create expense" do
    assert_difference("Expense.count") do
      post expenses_url, params: { expense: { expense_amount: @expense.expense_amount, expense_datetime: @expense.expense_datetime, expense_group_id: @expense.expense_group_id, expense_name: @expense.expense_name, expense_notes: @expense.expense_notes, expense_user: @expense.expense_user } }
    end

    assert_redirected_to expense_url(Expense.last)
  end

  test "should show expense" do
    get expense_url(@expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_url(@expense)
    assert_response :success
  end

  test "should update expense" do
    patch expense_url(@expense), params: { expense: { expense_amount: @expense.expense_amount, expense_datetime: @expense.expense_datetime, expense_group_id: @expense.expense_group_id, expense_name: @expense.expense_name, expense_notes: @expense.expense_notes, expense_user: @expense.expense_user } }
    assert_redirected_to expense_url(@expense)
  end

  test "should destroy expense" do
    assert_difference("Expense.count", -1) do
      delete expense_url(@expense)
    end

    assert_redirected_to expenses_url
  end
end
