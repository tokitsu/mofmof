class AddHouseRefToNearStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :near_stations, :house, foreign_key: true
  end
end
