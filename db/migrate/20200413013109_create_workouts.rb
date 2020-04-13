class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.date :date
      t.string :exercise
      t.string :reps
      t.string :sets
      t.boolean :status
      t.text :notes

      t.timestamps
    end
  end
end
