class CreateInks < ActiveRecord::Migration[5.0]
  def change
    create_table :inks do |t|
      t.string :color_code
      t.string :name

      t.timestamps
    end
  end
end
