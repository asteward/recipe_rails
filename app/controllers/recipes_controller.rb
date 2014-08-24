class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new(params[:recipes])
    @recipes = Recipe.order(:name)
    @tags = Tag.order(:name)
    if params[:tags]
      @tag = Tag.find(params[:tags][:tag_id])
      @tagged = @tag.recipes
    end
    render('/recipes/index.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipes])
    @tags = Tag.order(:name)
    if params[:tags]
      @tag = Tag.find(params[:tags][:tag_id])
      @tagged = @tag.recipes
    end
    if @recipe.save
      flash[:notice] = "#{@recipe.name} has been added!"
      redirect_to("/recipes")
    else
      flash[:alert] = "Be sure to complete all fields before submitting!"
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
      flash[:notice] = "#{@recipe.name} has been updated!"
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('/recipes/edit.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    flash[:notice] = "Our little elves have finished tearing the #{@recipe.name} recipe to itty bitty little pieces!"
    redirect_to("/recipes/")
  end
end
