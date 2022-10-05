# frozen_string_literal: true

class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
end
