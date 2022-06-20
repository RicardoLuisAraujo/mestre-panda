class GetRightSchema < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercises, :user_answer
    
  end
end
