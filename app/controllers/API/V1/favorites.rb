module API
  module V1
    class Favorites < Grape::API
      include API::V1::Defaults
      format :json
      prefix :api

      resource :favorites do
        desc "Returns all of a user's favorite recipes"
        params do
          requires :user_id, type: String, desc: "User's ID Token value"
        end
        get ':user_id' do
          @favorites = Favorite.where(user_id: :user_id)

          @favorites.each do |t|
            Recipe.where(id: t.id)
          end
        end

          post ':user_id' do
            @current_user = UserToken.where(id: :user_id)
            @recipe = Recipe.where(id: :recipe_id)
            @favorite = Favorite.new(user_token_id: @current_user.id, recipe_id: @recipe.id)
            @favorite.save
          end
      end
    end
  end
end
