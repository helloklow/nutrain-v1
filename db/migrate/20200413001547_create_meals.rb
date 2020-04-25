class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.date :date
      t.string :meal
      t.string :ingredients
      t.string :nutrition
      t.text :notes
      t.string :target

      t.timestamps
    end
  end
end