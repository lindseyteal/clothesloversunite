class CreateClothingSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :clothing_sizes do |t|
      t.references :gender, foreign_key: true
      t.timestamps
    end
  end
end
