class Inquiry < ApplicationRecord
  belongs_to :hunter
  has_many  :replies
end
