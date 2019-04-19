class House < ApplicationRecord
  has_many :near_stations
  accepts_nested_attributes_for :near_stations
end
