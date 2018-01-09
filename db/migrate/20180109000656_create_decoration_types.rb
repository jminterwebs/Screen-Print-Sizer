class CreateDecorationTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :decoration_types do |t|
      t.string :color
      t.string :name
      t.timestamps
    end
  end
end
