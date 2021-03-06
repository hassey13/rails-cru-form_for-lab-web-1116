class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new
    @artist = Artist.create(strong_params)
    redirect_to @artist
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(strong_params)
    redirect_to @artist
  end

  private

  def strong_params
    params.require(:artist).permit(:name)
  end

end
