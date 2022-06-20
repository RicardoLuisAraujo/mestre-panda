class DropUserAnswers < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_answers
  end
end
