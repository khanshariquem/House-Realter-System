class Company < ApplicationRecord
  has_many :houses
  has_many :User
  validates_presence_of :c_name, :website,:address
  validates_length_of :year, is: 4,  message: "Year must be in YYYY"
  validates :website, url: true
end