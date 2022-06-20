class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :answer
      t.text :true_answer
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
