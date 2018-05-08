class Clothing < ApplicationRecord

  
  
  include ImageUploader::Attachment.new(:image)
  belongs_to :user
  has_one :gender
  has_one :clothing_size
  has_one :clothing_type
  
end
