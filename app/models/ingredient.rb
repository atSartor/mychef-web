class Ingredient < ApplicationRecord
  has_many :ingredient_linkers
  has_many :recipes, through: :ingredient_linkers
end
