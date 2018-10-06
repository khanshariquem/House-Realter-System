class Search < ApplicationRecord
  # Function to search for companies
  def search_houses
    houses = House.all
    houses = houses.where(["location = ?", location]) if location.present?
    houses = houses.where(["size >= ?", min_size]) if min_size.present?
    houses = houses.where(["size <= ?", max_size]) if max_size.present?
    houses = houses.where(["price <= ?", max_cost]) if max_cost.present?
    houses = houses.where(["price >= ?", min_cost]) if min_cost.present?
    return houses
  end
end
