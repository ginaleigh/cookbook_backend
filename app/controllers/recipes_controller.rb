class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def create
    recipe = Recipe.new(
      name: params[:name],
      ingredients: params[:ingredients],
      instructions: params[:instructions],
      notes: params[:notes],
      preptime: params[:preptime],
      cooktime: params[:cooktime],
      category: params[:category],
      method: params[:method],
      cuisine: params[:cuisine],
      nutrition: params[:nutrition],
      facts: params[:facts],
      keywords: params[:keywords],
    )
    if recipe.save
      render json: recipe
    else
      render json: { errors: recipe.errors.full_messages }, status: 422
    end
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe.as_json
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.name params[:name] || recipe.name
    recipe.ingredients = params[:ingredients] || recipe.ingredients
    recipe.instructions = params[:instructions] || recipe.instructions
    recipe.notes = params[:notes] || recipe.notes
    recipe.preptime = params[:preptime] || recipe.preptime
    recipe.cooktime = params[:cooktime] || recipe.cooktime
    recipe.category = params[:category] || recipe.category
    recipe.method = params[:method] || recipe.method
    recipe.cuisine = params[:cuisine] || recipe.cuisine
    recipe.nutrition = params[:nutrition] || recipe.nutrition
    recipe.facts = params[:facts] || recipe.facts
    recipe.keywords = params[:keywords] || recipe.keywords
    recipe.save
    render json: recipe.as_json
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    render json: { message: "The recipe has been deleted." }
  end
end
