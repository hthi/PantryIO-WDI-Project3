class Recipe < ActiveRecord::Base
  has_many :recipeCollections
  has_many :ingredients, through: :recipeCollections
  belongs_to :user
  validates :title, :ingredients_list, :directions, presence: true
end
