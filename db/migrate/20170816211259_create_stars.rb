class CreateStars < ActiveRecord::Migration[5.1]
  def change
    create_table :stars do |t|
      t.string :name_star
      t.string :description

      t.timestamps
    end
  end
end
