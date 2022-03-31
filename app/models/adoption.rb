class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree

  validates :name, presence: true
end
