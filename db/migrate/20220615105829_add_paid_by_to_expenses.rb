class AddPaidByToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :paid_by, :string
  end
end
