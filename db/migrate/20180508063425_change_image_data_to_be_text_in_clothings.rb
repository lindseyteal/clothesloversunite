class ChangeImageDataToBeTextInClothings < ActiveRecord::Migration[5.1]
  def change
    change_column :clothings, :image_data, :text
  end
end
