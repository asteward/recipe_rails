class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render('/recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new(params[:recipes])
    render('/recipes/index.html.erb')
  end
end
