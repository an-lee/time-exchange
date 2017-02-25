class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :posts
  has_many :reviews

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  ratyrate_rateable 'visual_effects'

end
