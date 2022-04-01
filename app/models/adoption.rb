class Adoption < ApplicationRecord
  has_one :review, dependent: :destroy
end
