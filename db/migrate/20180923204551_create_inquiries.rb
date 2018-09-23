class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.belongs_to :hunter, foreign_key: true
      t.string :house_belongs_to
      t.string :query

      t.timestamps
    end
  end
end
