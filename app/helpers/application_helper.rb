module ApplicationHelper
  # Return the food name and quanity and price for shopping list.
  def ingredient(recipe_food)
    quantity = recipe_food.quantity - recipe_food.food.quantity
    #  only return if zero or negative.
    return if quantity.negative? || quantity.zero?

    { name: recipe_food.food.name, quantity:, price: quantity * recipe_food.food.price }
  end

  #  Calcuate the total price of shopping list.
  def total_price(ingredients)
    total_price = 0
    ingredients.each do |ing|
      total_price += ingredient(ing)[:price] if ingredient(ing)
    end
    total_price
  end

  #  Return the total ingredients for shopping list.

  def total_ingredients(ingredients)
    quantity = 0
    ingredients.each do |ing|
      quantity += ingredient(ing)[:quantity] if ingredient(ing)
    end
    quantity
  end

  #  Return the ingredients ammont for shopping list.

  def amount_of_ingredients(ingredients)
    amount = 0
    ingredients.each do |ing|
      amount += 1 if ingredient(ing)
    end
    amount
  end
end
