# frozen_string_literal: true

class RecipeFoodsController < ApplicationController
  before_action :set_recipe_food, only: %i[show edit update destroy]

  # GET /recipe_foods or /recipe_foods.json
  def index
    @recipe_foods = RecipeFood.all
  end

  # GET /recipe_foods/1 or /recipe_foods/1.json
  def show
    @food = Food.find_by(user: current_user)
    #  @recipe_foods = RecipeFood.find(params[:recipe_id])
  end

  # GET /recipe_foods/new
  def new
    # @food = Food.find_by(user: current_user)
    # @recipe_food = RecipeFood.new
    # @recipe_food.food = @food
    # @recipe_food.recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new
  end

  # GET /recipe_foods/1/edit
  def edit; end

  # POST /recipe_foods or /recipe_foods.json
  def create
    # @recipe = Recipe.find(params[:recipe_id])
    @receip1 = Recipe.find(2)
    @food1 = Food.find(5)
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.recipe = @receip1
    @recipe_food.food = @food1 # @recipe_food = @recipe.recipe_foods.build(recipe_food_params)

    respond_to do |format|
      if @recipe_food.save
        format.html { redirect_to recipe_food_url(@recipe_food), notice: 'Recipe food is successfully created.' }
        format.json { render :show, status: :created, location: @recipe_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_foods/1 or /recipe_foods/1.json
  def update
    respond_to do |format|
      if @recipe_food.update(recipe_food_params)
        format.html { redirect_to recipe_food_url(@recipe_food), notice: 'Recipe food is successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_foods/1 or /recipe_foods/1.json
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.find(params[:id])

    @recipe_food.destroy

    respond_to do |format|
      format.html { redirect_to recipe_foods_url, notice: 'Recipe food is destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe_food
    @recipe_food = RecipeFood.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :quantity)
  end
end
