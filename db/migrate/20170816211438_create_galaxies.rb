class CreateGalaxies < ActiveRecord::Migration[5.1]
  def change
    create_table :galaxies do |t|
      t.string :name_galaxy
      t.decimal :distance
      t.string :description

      t.timestamps
    end
  end
end
