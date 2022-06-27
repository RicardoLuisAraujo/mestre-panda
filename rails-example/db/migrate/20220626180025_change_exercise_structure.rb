class ChangeExerciseStructure < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :sub_category, :string
    add_column :exercises, :year, :integer
    add_column :exercises, :image, :string
    add_column :exercises, :multiple_choice, :boolean
    add_column :exercises, :resolution, :string
    add_column :exercises, :image_resolution, :string
    add_column :exercises, :source, :string

    remove_column :exercises, :number
  end
end