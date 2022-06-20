class DeleteAnswersColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercises, :answers
    remove_column :exercises, :true_answer
  end
end
