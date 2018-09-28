class ModifyInguiry < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :house_id, :integer
    add_foreign_key :inquiries, :houses
  end
end
