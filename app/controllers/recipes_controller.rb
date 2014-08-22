class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new(params[:recipes])
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

  def edit
    @recipe = Recipe.find(params[:id])
    render('/recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipes])
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('/recipes/edit.html.erb')
    end
  end
end
