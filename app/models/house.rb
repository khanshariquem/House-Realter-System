class House < ApplicationRecord
  belongs_to :company
  has_many :buyers
end
