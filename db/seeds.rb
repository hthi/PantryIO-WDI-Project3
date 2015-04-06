RecipeCollection.delete_all
User.delete_all
Recipe.delete_all
Ingredient.delete_all

user1 = User.create!(name: "Joe Smoe", email: "anotherGuy@yahoo.com", password: "something", password_confirmation: "something")
user2 = User.create!(name: "Rick Grimes", email: "wd@amc.com", password: "zombies", password_confirmation: "zombies")

recipe1 = user1.recipes.create!(title: "Bacon Fried Bananas", description: "yummy maybe?", image_url: "www.bacon.com", ingredients_list: "1 pound bacon, 3 ripe bananas, sliced", rating: 3, directions: "Place the bacon in a large, deep skillet; cook over medium-high heat, turning occasionally, until evenly browned, about 10 minutes. Drain the bacon slices on a paper towel-lined plate. Reduce heat to medium. Place the bananas cut side down and cook one minute. Flip with a spatula and cook an additional minute. Drain the banana slices on a paper towel-lined plate. Serve warm with bacon.", user_id: user1.id)
recipe2 = user2.recipes.create!(title: "Boiled Eggs", description: "simple", image_url: "http://img.sndimg.com/food/image/upload/w_614,h_461,c_fit/v1/img/recipes/16/01/67/pic7iFxUQ.jpg", ingredients_list: "eggs", rating: 5, directions: "Place the eggs in a medium saucepan and cover with room temperature water. Bring the eggs to a boil, remove from the heat and let sit for 8 minutes. Shock the eggs in cold water to stop the cooking and shrink the egg from the shell. Peel.", user_id: user2.id)

ingredient1 = Ingredient.create!(name: "bananas")
ingredient2 = Ingredient.create!(name: "eggs")

RecipeCollection.create(ingredient_id: ingredient1.id, recipe_id: recipe1.id)
RecipeCollection.create(ingredient_id: ingredient2.id, recipe_id: recipe2.id)
