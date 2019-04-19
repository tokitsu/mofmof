class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :fee
      t.string :adress
      t.string :old
      t.text :comment
      
      t.timestamps
    end
  end
end
