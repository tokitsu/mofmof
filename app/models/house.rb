class House < ApplicationRecord
  has_many :near_stations, inverse_of: :house
  accepts_nested_attributes_for :near_stations
end