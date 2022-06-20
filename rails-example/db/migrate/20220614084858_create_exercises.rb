class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :category
      t.integer :numbber
      t.string :statement
      t.string :answers
      t.string :true_answer

      t.timestamps
    end
  end
end
