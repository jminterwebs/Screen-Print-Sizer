class CreateLocationsDimensions < ActiveRecord::Migration[5.0]
  def change
    create_table :locations_dimensions do |t|
      t.belongs_to :location, index: true
      t.belongs_to :dimension, index: true

      t.timestamps
    end
  end
end
