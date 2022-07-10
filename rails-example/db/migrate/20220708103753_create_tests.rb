class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
