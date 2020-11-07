class Recipe < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_title, against: :title
  has_many :ingredient_linkers
  has_many :ingredients, through: :ingredient_linkers
  has_many :favorites
  has_many :user_tokens, through: :favorites
end
