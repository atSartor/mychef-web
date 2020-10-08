module API
  module V1
    class Recipes < Grape::API
      include API::V1::Defaults
      format :json
      prefix :api
      resource :recipes do
        post do
          @rec = Recipe.create(title: params[:title], total_time: params[:total_time],
                        yields: params[:yields], instructions: params[:instructions],
                        image: params[:image], host: params[:host])
          params[:ingredients].each do |t|
            if Ingredient.exists?(ingredient_name: t)
              @rec.ingredients << Ingredient.where(ingredient_name: t)
            else
              @rec.ingredients.create(ingredient_name: t)
            end
          end
          @rec.save
        end
      end
    end
  end
end
