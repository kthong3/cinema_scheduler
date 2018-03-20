class FilmsController < ApplicationController
  def index
    @cinema = Cinema.find(params[:cinema_id])
    @films = @cinema.films
  end

  def new
  end

  def create
  end

  def show
    @cinema = Cinema.find(params[:cinema_id])
    @film = @cinema.films.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def films_params
    params.require(:film).permit(:title, :length, :release_date, :rating, :cinema_id)
  end
end
