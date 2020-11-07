module API
  module V1
    class ShowRecipes < Grape::API
      include API::V1::Defaults
      resource :show_recipes do
        desc "Return all recipes"
        get "" do
          Recipe.all
        end

        desc "Returns searched recipes"
        params do
          requires :search, type: String, desc: "User's search string"
        end
        get ":search" do
          #Recipe.where("title like ?", "%#{:search}%")
          Recipe.search_title(:search)
        end
      end
    end
  end
end

