class CreateGarments < ActiveRecord::Migration[5.0]
  def change
    create_table :garments do |t|
      t.string :style_code
      t.string :name
      t.timestamps
    end
  end
end
