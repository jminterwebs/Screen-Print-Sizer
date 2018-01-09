class CreateDimensions < ActiveRecord::Migration[5.0]
  def change
    create_table :dimensions do |t|
      t.integer :width
      t.integer :height
      t.timestamps
    end
  end
end
