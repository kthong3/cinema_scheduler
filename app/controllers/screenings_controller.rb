class ScreeningsController < ApplicationController
  def index
    @film = Film.find(params[:film_id])
    @screenings = @film.screenings
  end

  def show
    @screening = Screening.find(params[:id])
  end
end
