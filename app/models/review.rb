class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :title, presence: true
  # validates :body, presence: true

  scope :recent, -> { order("created_at DESC")}
end
