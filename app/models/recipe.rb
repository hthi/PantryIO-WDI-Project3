class Recipe < ActiveRecord::Base
  has_many :recipe_collections
  has_many :ingredients, through: :recipe_collections
  belongs_to :user
end
