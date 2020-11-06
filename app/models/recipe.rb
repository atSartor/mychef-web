class Recipe < ApplicationRecord
  has_many :ingredient_linkers
  has_many :ingredients, through: :ingredient_linkers
  has_many :favorites
  has_many :user_tokens, through: :favorites
end
