class NearStation < ApplicationRecord
  belongs_to :house, inverse_of: :near_stations
end