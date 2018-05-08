class AddColumnGenderToGenders < ActiveRecord::Migration[5.1]
  def change
    add_column :genders, :gender, :string
  end
end
