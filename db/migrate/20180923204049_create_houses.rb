class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.belongs_to :company, foreign_key: true
      t.string :location
      t.float :size
      t.integer :year
      t.string :style
      t.integer :price
      t.integer :floors
      t.boolean :basement
      t.string :owner
      t.string :contact

      t.timestamps
    end
  end
end
