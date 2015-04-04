require 'rails_helper'

RSpec.describe Recipe do
  describe '.create' do
    it 'creates a new recipe' do
      expect(Recipe.create()).to be_a Recipe
    end

    it 'is invalid without a title' do
      expect(Recipe.create!(description: "tasty and healthy", ingredients: "6 cups of broccoli florets", rating: 4, directions: "Preheat oven to 425°. Mix broccoli florets, 1 tablespoon extra-virgin olive oil, and 1 tablespoon chopped garlic; roast in middle of oven until golden and crispy (10-15 minutes). Transfer to a serving bowl; toss with 1 teaspoon sesame oil.")).not_to be_valid
    end

    it 'is invalid without ingredients' do
      expect(Recipe.create!(title: "Crispy Garlic Broccoli", description: "tasty and healthy", rating: 4, directions: "Preheat oven to 425°. Mix broccoli florets, 1 tablespoon extra-virgin olive oil, and 1 tablespoon chopped garlic; roast in middle of oven until golden and crispy (10-15 minutes). Transfer to a serving bowl; toss with 1 teaspoon sesame oil.")).not_to be_valid
    end

    it 'is invalid without directions' do
      expect(Recipe.create!(title: "Crispy Garlic Broccoli", description: "tasty and healthy", ingredients: "6 cups of broccoli florets", rating: 4)).not_to be_valid
    end
  end
end
