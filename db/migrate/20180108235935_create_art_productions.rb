class CreateArtProductions < ActiveRecord::Migration[5.0]
  def change
    create_table :art_productions do |t|
      t.string :art_production_code
      t.integer :color_amount
      t.timestamps
    end
  end
end
