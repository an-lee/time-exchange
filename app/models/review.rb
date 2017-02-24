class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :title, presence: true
  validates :body, presence: true

  scope :recent, -> { order("created_at DESC")}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
  
end
