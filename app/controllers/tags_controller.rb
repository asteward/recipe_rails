class TagsController < ApplicationController
  def index
    @tag = Tag.new(params[:tags])
    @tags = Tag.all
    render('/tags/index.html.erb')
  end

  def create
    @tag = Tag.new(params[:tags])
    if @tag.save
      flash[:notice] = "#{@tag.name} has been added!"
      redirect_to("/tags")
    else
      flash[:alert] = "Be sure to complete all fields before submitting!"
      render('/tags/index.html.erb')
    end
  end

  def show
    @tag = Tag.find(params[:id])
    render('/tags/show.html.erb')
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.delete
    redirect_to("/tags")
  end
end
