class Hunter < ApplicationRecord
  belongs_to :user
  has_many :inquiries
  has_many :buyers
  accepts_nested_attributes_for :user
end
