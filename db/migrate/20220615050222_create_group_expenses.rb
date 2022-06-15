class CreateGroupExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :group_expenses do |t|
      t.string :group_id
      t.string :group_name
      t.string :expense_id
      t.string :expense_name
      t.string :user_id
      t.string :username
      t.float :shared_amount
      t.string :status

      t.timestamps
    end
  end
end
