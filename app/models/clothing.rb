class Clothing < ApplicationRecord

  include ImageUploader::Attachment.new(:image)
  belongs_to :user
  has_many :gender
  has_many :clothing_size
  has_many :clothing_type
  
end
