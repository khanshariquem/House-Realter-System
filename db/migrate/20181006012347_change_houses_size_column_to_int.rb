class ChangeHousesSizeColumnToInt < ActiveRecord::Migration[5.2]
  def change
    change_column :houses, :size, :integer
  end
end
