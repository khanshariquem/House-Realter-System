class Company < ApplicationRecord
  has_many :houses
  has_many :User
end
