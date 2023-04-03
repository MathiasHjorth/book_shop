class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.create(author_params)
    @author.save

    redirect_to root_path
  end

  def author_params
    params.require(:author).permit(:full_name, :date_of_birth)
  end

end
