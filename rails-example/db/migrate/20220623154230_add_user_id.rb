class AddUserId < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_answers, :user
  end
end
