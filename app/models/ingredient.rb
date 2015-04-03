class Ingredient < ActiveRecord::Base
  has_many :recipe_collections
  has_many :recipes, through: :recipe_collections
end
