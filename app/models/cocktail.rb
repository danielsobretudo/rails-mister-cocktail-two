class Cocktail < ApplicationRecord
  validates :name, presence: true
  validates :ingredients, :recipe, presence: true
  validates :stars, inclusion: { in: (1..5) }, numericality: { message: "%{value} seems wrong" }
end
