class CreateNearStations < ActiveRecord::Migration[5.0]
  def change
    create_table :near_stations do |t|
      t.string :line
      t.string :station
      t.string :minutes_from_house
      
      t.timestamps
    end
  end
end
