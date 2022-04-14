class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user
  has_one :tree, through: :adoption

  validates :description, :rating, presence: true
  validates :description, length: { in: 20..280 }
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
