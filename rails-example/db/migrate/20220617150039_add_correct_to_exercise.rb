class AddCorrectToExercise < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :user_answer, :string
  end
end
