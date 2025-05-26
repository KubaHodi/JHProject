class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :mileage
      t.date :production_date
      t.integer :power
      t.string :fuel_type
      t.string :transmission
      t.integer :cubic_capacity

      t.timestamps
    end
  end
end
