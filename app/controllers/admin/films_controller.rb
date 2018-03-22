class Admin::FilmsController < Admin::BaseController
  before_action :find_film, only: [:edit, :update, :destroy]

  def index
    @film = Film.all
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    @film.admin = current_user
    if @film.save
      redirect_to @film
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @film.update(film_params)
      redirect_to @film
    else
      render 'edit'
    end
  end

  def destroy
    @film.destroy
    redirect_to root_path
  end

  private
  def films_params
    params.require(:film).permit(:title, :length, :release_date, :rating, :admin_id)
  end

  def find_film
    @film = Film.find(params[:id])
  end
end