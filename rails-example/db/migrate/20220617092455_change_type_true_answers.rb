class ChangeTypeTrueAnswers < ActiveRecord::Migration[7.0]
  def change
    change_column :answers, :true_answer, :boolean
  end
end
