class Recipe < ApplicationRecord
  has_many :ingredient_linkers
  has_many :ingredients, through: :ingredient_linkers
end
