class Review < ApplicationRecord
  belongs_to :user
  belongs_to :adoption
  validates :rating, presence: true
  validates :fruits, inclusion: { in: %w(1 2 3 4 5), message: "%{value} is not a
  valid number" }
  validates :description, presence: true
  validates :description, length: { minimum: 3, maximium: 114 }
end
