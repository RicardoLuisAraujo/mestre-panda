class AddExerciseToTest < ActiveRecord::Migration[7.0]
  def change
    add_reference :tests, :exercise
  end
end
