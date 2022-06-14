class AddColumnToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :expense_category, :string
  end
end
