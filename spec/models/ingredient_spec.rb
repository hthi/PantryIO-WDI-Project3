require 'rails_helper'

RSpec.describe Ingredient do
  describe '.create' do
    before(:each) do
      @ingredient = Ingredient.create!(name: "carrots")
    end

    it 'creates a new ingredient' do
      expect(Ingredient.create()).to be_an Ingredient
    end
  end
end
