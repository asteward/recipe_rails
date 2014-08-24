class RecipesTagsController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
    @tags = Tag.order(:name)
    render('/recipes_tags/index.html.erb')
  end

  def create
    @recipe = Recipe.find(params[:recipes_tags][:recipe_id])
    @recipe.tags << Tag.find(params[:recipes_tags][:tag_id])
    redirect_to("/recipes_tags")
  end
end
