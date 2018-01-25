class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :location_code
      t.string :name
      t.integer :dimension_id
      t.timestamps
    end
  end
end
