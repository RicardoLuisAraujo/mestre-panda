class AddUserAnswerToTest < ActiveRecord::Migration[7.0]
  def change
    add_reference :tests, :user_answer
  end
end
