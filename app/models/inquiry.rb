class Inquiry < ApplicationRecord
  belongs_to :user
  belongs_to :house
  has_many  :replies , dependent: :destroy
  validates_presence_of :subject,:content
end
