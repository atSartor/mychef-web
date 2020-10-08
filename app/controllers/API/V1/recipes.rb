module API
  module V1
    class Recipes < Grape::API
      include API::V1::Defaults
      format :json
      prefix :api
      resource :recipes do
        post do
          #TODO: redesign database schema to
          # improve searchability i.e. not just raw JSON
          # Decide on a permanent schema
          # also, for this part, new_recipe = JSON.parse params
          # will simplify your life
          new_recipe = JSON.parse(params)
          @rec = Recipe.create(title: new_recipe.title, total_time: new_recipe.total_time,
                        yields: new_recipe.yields, instructions: new_recipe.instructions,
                        image: new_recipe.image, host: new_recipe.image)
          new_recipe.ingredients.each do |t|
            unless Ingredient.find(t)
              Ingredient.create(t)
            end
          end
          new_recipes = Recipe.create(recipe_raw: params)
        end
      end
    end
  end
end
