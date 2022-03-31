class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_one :review

  validates :name, presence: true
end
