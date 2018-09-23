class CreateHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :hunters do |t|
      t.belongs_to :user, foreign_key: true
      t.string :contact_mode

      t.timestamps
    end
  end
end
