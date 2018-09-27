class Company < ApplicationRecord
  has_many :houses
  has_one :realtor
end
