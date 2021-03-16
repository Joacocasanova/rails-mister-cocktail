class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true

  validates :rating, :inclusion => 1..5
  validates :rating, numericality: { only_integer: true }
end
