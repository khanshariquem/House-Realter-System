class AdjustInquiry1 < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :user_id
    add_column :inquiries, :user_id, :integer
    add_foreign_key :inquiries, :users
  end
end
