class AddExerciseNumber < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :exercise_number, :string
    add_column :answers, :exercise_number, :string
  end
end
