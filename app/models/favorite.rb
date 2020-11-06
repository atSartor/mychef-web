class Favorite < ApplicationRecord
  belongs_to :user_token
  belongs_to :recipe
end
