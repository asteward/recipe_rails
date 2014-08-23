class RecipesTagsController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
    @tags = Tag.order(:name)
    render('/recipes_tags/index.html.erb')
  end
end
