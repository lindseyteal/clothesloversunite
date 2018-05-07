class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :suburb
      t.string :postcode
      t.string :state
      t.boolean :buyer
      t.boolean :seller

      t.timestamps
    end
  end
end
