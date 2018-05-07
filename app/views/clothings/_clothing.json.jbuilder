json.extract! clothing, :id, :user_id, :title, :description, :clothing_type_id, :gender_id, :clothing_size_id, :item_price, :postage_price, :image_data, :created_at, :updated_at
json.url clothing_url(clothing, format: :json)
