class ModifyInguiry2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :inquiries, :hunter_id, :user_id
    add_foreign_key :inquiries, :users
  end
end
