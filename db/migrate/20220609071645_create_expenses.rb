class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :expense_name
      t.decimal :expense_amount
      t.datetime :expense_datetime
      t.text :expense_notes
      t.string :expense_group_id

      t.timestamps
    end
  end
end
