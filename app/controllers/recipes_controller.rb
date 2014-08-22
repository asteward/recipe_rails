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
end
