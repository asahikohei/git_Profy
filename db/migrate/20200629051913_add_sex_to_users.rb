class AddSexToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sex, :string
    add_column :users, :birth_day, :string
    add_column :users, :hobby, :string
  end
end
