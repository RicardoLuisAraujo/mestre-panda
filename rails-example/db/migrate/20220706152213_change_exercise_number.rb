class ChangeExerciseNumber < ActiveRecord::Migration[7.0]
  def change
    change_column :exercises, :exercise_number, :integer
    change_column :answers, :exercise_number, :integer
  end
end
