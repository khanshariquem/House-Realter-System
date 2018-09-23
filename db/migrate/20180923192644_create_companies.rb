class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :c_name
      t.string :website
      t.string :address
      t.integer :size
      t.integer :year
      t.integer :revenue
      t.string :synopsis

      t.timestamps
    end
  end
end
