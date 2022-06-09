class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :group_type
      t.string :group_owner
      t.string :group_status

      t.timestamps
    end
  end
end
