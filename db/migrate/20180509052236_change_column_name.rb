class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :clothing_sizes, :clothing_size, :size
    rename_column :genders, :gender, :gender_style
    rename_column :clothing_types, :clothing_type, :clothing_category
  end 
end
