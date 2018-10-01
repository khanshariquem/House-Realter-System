class CreateInquiriesNew < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :house, foreign_key: true
      t.string :subject
      t.string :content
      t.timestamps
    end
  end
end
