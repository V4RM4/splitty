class ChangeDataTypeForFieldName < ActiveRecord::Migration[7.0]
  def change
    change_column :expenses, :expense_amount, :float
  end
end
