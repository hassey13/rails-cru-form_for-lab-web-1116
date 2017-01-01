class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new
    @genre = Genre.create(strong_params)
    redirect_to @genre
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(strong_params)
    redirect_to @genre
  end

  private

  def strong_params
    params.require(:genre).permit(:name)
  end

end
