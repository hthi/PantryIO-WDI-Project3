class Ingredient < ActiveRecord::Base
  has_many :recipeCollections
  has_many :recipes, through: :recipeCollections
end
