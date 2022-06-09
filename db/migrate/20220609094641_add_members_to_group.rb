class AddMembersToGroup < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :group_members, :string
  end
end
