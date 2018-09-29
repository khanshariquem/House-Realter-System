class EditReplyTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :replies, :realtor_id
    add_column :replies, :user_id , :integer
    add_foreign_key :replies, :users
  end
end
