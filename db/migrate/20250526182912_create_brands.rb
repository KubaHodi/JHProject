class CreateBrands < ActiveRecord::Migration[8.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.date :production_date
      t.string :founder_name
      t.string :founder_surname

      t.timestamps
    end
  end
end
