class UserToken < ApplicationRecord
  has_many :favorites
  has_many :recipes, through: :favorites
end
