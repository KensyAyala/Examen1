class CreateMyPlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :my_planets do |t|
      t.string :name_planet
      t.decimal :radius
      t.string :description

      t.timestamps
    end
  end
end
