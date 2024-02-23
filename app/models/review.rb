class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, inclusion: 0..5, numericality: { only_integer: true }
end
