class TagsController < ApplicationController
  def index
    @tag = Tag.find(params[:id])
    @tags = Tag.all
    render('/tags/index.html.erb')
  end
end
