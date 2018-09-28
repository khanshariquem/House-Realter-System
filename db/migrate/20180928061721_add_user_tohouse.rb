class AddUserTohouse < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :houses, :users
  end
end
