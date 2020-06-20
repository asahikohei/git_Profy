class RemoveColumnFromGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :group_key, :string
  end
end
