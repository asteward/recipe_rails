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
    render('/recipes/show.html.erb')
  end
end
