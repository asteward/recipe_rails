class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new(params[:recipes])
    @recipes = Recipe.order(:name)
    @tags = Tag.order(:name)
    @tagged = Recipe.tagged(params[:recipes][:tag])
    render('/recipes/index.html.erb')
  end

  def create
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

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect_to("/recipes/")
  end
end
