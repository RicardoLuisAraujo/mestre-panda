class AddTestsToExercises < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercises, :test, null: true, foreign_key: true
  end
end
