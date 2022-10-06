# frozen_string_literal: true

class ShoppingListController < ApplicationController
  def index
    @ingredients = RecipeFood.includes(:food).where(recipe: Recipe.where(user: current_user))
  end
end
