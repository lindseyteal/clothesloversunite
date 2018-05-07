class CreateClothings < ActiveRecord::Migration[5.1]
  def change
    create_table :clothings do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.references :clothing_type, foreign_key: true
      t.references :gender, foreign_key: true
      t.references :clothing_size, foreign_key: true
      t.integer :item_price
      t.integer :postage_price
      t.string :image_data

      t.timestamps
    end
  end
end
