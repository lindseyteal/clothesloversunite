# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clothing_type_list = ClothingType.create!([
    {clothing_category: 'Pants'}, 
    {clothing_category: 'Jeans'},
    {clothing_category: 'Skirt'},
    {clothing_category: 'Dress'},
    {clothing_category: 'Shorts'},
    {clothing_category: 'Singlet'},
    {clothing_category: 'T-Shirt'},
    {clothing_category: 'Long Sleeve Top'},
    {clothing_category: 'Jumper'},
    {clothing_category: 'Jacket'}
   ])


gender_list = Gender.create!([{gender_style: 'Women'}, {gender_style: 'Men'}, {gender_style: 'Unisex'}])


clothing_size_list = ClothingSize.create!([
    {size: 'Womens Size 6'},
    {size: 'Womens Size 8'},
    {size: 'Womens Size 10'},
    {size: 'Womens Size 12'},
    {size: 'Womens Size 14'},
    {size: 'Womens Size 16'},
    {size: 'Womens Size 18'},
    {size: 'Womens Size 20'},
    {size: 'Womens Size 22'},
    {size: 'Womens Size 24'},
    {size: 'Womens Size 26'},
    {size: 'Mens Size XS'},
    {size: 'Mens Size S'},
    {size: 'Mens Size M'},
    {size: 'Mens Size L'},
    {size: 'Mens Size XL'},
    {size: 'Mens Size 2XL'},
    {size: 'Mens Size 3XL'},
    {size: 'Mens Size 4XL'},
    {size: 'Mens Size 5XL'}
])


