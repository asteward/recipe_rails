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
      flash[:alert] = "Looks like an error occurred! Let's try again, shall we?"
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
    flash[:notice] = "The #{@tag.name} tag has been deleted with extreme prejudice!"
    redirect_to("/tags")
  end
end
