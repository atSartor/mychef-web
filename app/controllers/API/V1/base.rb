module API
  module V1
    class Base < Grape::API
      mount API::V1::Users
      mount API::V1::Recipes
      mount API::V1::ShowRecipes
      mount API::V1::Authenticate
      mount API::V1::Favorite
    end
  end
end
