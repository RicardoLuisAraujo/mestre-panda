class RemoveExerciseFromTests < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tests, :exercise, null: false, foreign_key: true
  end
end
