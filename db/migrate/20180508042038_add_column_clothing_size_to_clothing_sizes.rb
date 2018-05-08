class AddColumnClothingSizeToClothingSizes < ActiveRecord::Migration[5.1]
  def change
    add_column :clothing_sizes, :clothing_size, :string
  end
end
