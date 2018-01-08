class CreateArtRefrences < ActiveRecord::Migration[5.0]
  def change
    create_table :art_refrences do |t|
      t.integer :art_color_amount
      t.string :art_ref_code     

      t.timestamps
    end
  end
end
