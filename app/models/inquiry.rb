class Inquiry < ApplicationRecord
  belongs_to :user
  belongs_to :house
  has_many  :replies
  validates_presence_of :subject,:content
end
