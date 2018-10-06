class AddSearchParams < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :min_size, :integer
    add_column :searches, :max_size, :integer
    add_column :searches, :min_cost, :integer
    add_column :searches, :max_cost, :integer
  end
end
