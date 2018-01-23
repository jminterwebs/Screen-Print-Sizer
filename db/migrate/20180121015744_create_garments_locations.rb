class CreateGarmentsLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :garments_locations do |t|
      t.belongs_to :garment, index: true
      t.belongs_to :location, index: true
      t.timestamps
    end
  end
end
