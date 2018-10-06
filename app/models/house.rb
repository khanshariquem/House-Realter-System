class House < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :inquiries
  has_many :buyers
  validates_presence_of :company_id, :location,:price
  mount_uploader :image, ImageUploader
end
