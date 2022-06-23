class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoption, dependent: :destroy
  validates :name, :adress, :fruits, :description, :quantity_by_year,
            presence: true
  validates :fruits, inclusion: { in: %w(Apple Apricot Cherry Chestnut
            Coconut_tree Fig Grapefruit Hazel Mandarin Mango Mirabellier
            Mulberry Olivier Orange Pear Plum),
            message: "is not a valid fruit", case_sensitive: false }
  validates_uniqueness_of :fruits
  validates :description, length: { minimum: 20, maximium: 280 }
  validates :quantity_by_year, numericality: { greater_than: 0 }
  validates :price_per_year, numericality: { greater_than: 0 }
end
