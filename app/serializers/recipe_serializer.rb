class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :ingredients, :rating, :directions
end
