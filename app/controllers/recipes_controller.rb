class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render('/recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new(params[:recipes])
    if @recipe.save
      redirect_to("/recipes")
    else
      render('/recipes/index.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    redirect_to("/recipes/#{@recipe.id}")
end
