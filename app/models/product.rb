class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :posts
  has_many :reviews
end
