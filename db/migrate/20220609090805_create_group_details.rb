class CreateGroupDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :group_details do |t|
      t.string :group_id
      t.string :group_name
      t.string :user_id
      t.string :username

      t.timestamps
    end
  end
end
