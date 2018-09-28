class AdjustInquiry < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :house_belongs_to
    remove_column :inquiries, :query
    add_column :inquiries, :subject ,:string
    add_column :inquiries, :content ,:string
  end
end
