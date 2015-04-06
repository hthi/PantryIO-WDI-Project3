class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :ingredients_list
      t.integer :rating
      t.string :directions
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :recipes, :users
  end
end
