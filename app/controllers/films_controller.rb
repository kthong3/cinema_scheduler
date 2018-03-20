class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def new
    @film = Film.new
  end

  def create
  end

  def show
    @film = Film.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def films_params
    params.require(:film).permit(:title, :length, :release_date, :rating)
  end
end
