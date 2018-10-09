class House < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :inquiries
  has_many :buyers
  validates_presence_of :company_id, :location,:price
  mount_uploader :image, ImageUploader
  validates :contact, format: { with: /\A([2-9]\d{2})([2-9]\d{2})(\d{4})\z/,
                              message: 'number invalid'}
  validates :year,
            presence: true,
            inclusion: { in: 1900..Date.today.year },
            format: {
                with: /(19|20)\d{2}/i,
                message: "should be a four-digit year"
            }
end


