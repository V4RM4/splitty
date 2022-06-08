class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :owner
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
