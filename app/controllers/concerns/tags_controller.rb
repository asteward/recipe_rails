class TagsController < ApplicationController
  def index
    @tag = Tag.new(params[:tags])
    @tags = Tag.all
    render('/tags/index.html.erb')
  end

  def create
    @tag = Tag.new(params[:tags])
    if @tag.save
      redirect_to("/tags")
    else
      render('/tags/index.html.erb')
    end
  end
end
