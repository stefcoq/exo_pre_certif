class Adoption < ApplicationRecord
  belongs_to :user
  has_one :review, dependent: :destroy
  validates :starts_at, presence: true
  validates :end_at, presence: true
end
