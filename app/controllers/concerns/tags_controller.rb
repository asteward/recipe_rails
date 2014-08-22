class TagsController < ApplicationController
  def index
    @tag = Tag.new(params[:tags])
    @tags = Tag.all
    render('/tags/index.html.erb')
  end
end
