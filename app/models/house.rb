class House < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :inquiries
  has_many :buyers

  mount_uploader :image, ImageUploader
end
