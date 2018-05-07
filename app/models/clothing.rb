class Clothing < ApplicationRecord
  
  include ImageUploader::Attachment.new(:image)
  belongs_to :user
  belongs_to :clothing_type
  has_one :gender
  belongs_to :clothing_size

  
end
