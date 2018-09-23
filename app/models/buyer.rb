class Buyer < ApplicationRecord
  belongs_to :house
  belongs_to :hunter
end
