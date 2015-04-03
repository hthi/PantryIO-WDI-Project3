class CreateRecipeCollection < ActiveRecord::Migration
  def change
    create_table :recipe_collections do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :recipe, index: true
    end
    add_foreign_key :recipe_collections, :ingredients
    add_foreign_key :recipe_collections, :recipes
  end
end
