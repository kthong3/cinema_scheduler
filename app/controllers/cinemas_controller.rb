class CinemasController < ApplicationController
  def index
    @cinemas = Cinema.all
  end

  def show
    @cinema = Cinema.find(params[:id])
    @cinema_schedules = @cinema.schedules
  end
end
