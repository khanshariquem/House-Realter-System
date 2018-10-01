class Search < ApplicationRecord
  # Function to search for companies
  def search_houses
    houses = House.all
    houses = houses.where(["location = ?", location]) if location.present?
    return houses
  end
end
