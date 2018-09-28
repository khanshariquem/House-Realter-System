class House < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :inquiries
  has_many :buyers
end
