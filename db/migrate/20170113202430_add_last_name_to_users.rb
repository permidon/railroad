class AddLastNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :last_name, :string
    rename_column :users, :name, :first_name
  end
end
