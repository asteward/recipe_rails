class RecipesTagsController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
    @tags = Tag.order(:name)
    render('/recipes_tags/index.html.erb')
  end

  def create
    @recipe_tag = Recipe_Tag.new(params[:recipes_tags])
    if @recipe_Tag.save
      redirect_to("/recipes")
    else
      render('/recipes_tags/index.html.erb')
    end
  end
end
