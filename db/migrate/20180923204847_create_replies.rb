class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.belongs_to :realtor, foreign_key: true
      t.belongs_to :inquiry, foreign_key: true
      t.string :response

      t.timestamps
    end
  end
end
