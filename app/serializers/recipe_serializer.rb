class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :yields, :ingredients
end
