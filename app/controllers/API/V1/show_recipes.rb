module API
  module V1
    class Show_recipes < Grape::API
      include API::V1::Defaults

      resource :show_recipes do
        desc "Return all recipes"
        get "" do
          Recipe.all
        end
      end
    end
  end
end

