class RecipesTagsController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
    @tags = Tag.order(:name)
    render('/recipes_tags/index.html.erb')
  end

  def create
    @recipe = Recipe.find(params[:recipes_tags][:recipe_id])
    @tag = Tag.find(params[:recipes_tags][:tag_id])
    @recipe.tags << @tag
    redirect_to("/recipes_tags")
  end
end
