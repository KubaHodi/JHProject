class AddBrandToCars < ActiveRecord::Migration[8.0]
  def change
    add_reference :cars, :brand, null: false, foreign_key: true
  end
end
