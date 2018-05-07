class Clothing < ApplicationRecord
  belongs_to :user
  belongs_to :clothing_type
  belongs_to :gender
  belongs_to :clothing_size
end
