class Admin::CinemasController < Admin::BaseController
  before_action :find_cinema, only: [:edit, :update, :destroy]
  def new
    @cinema = Cinema.new
  end

  def create
    @cinema = Cinema.new(cinema_params)
    @cinema.admin = current_user
    if @cinema.save
      redirect_to @cinema
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @cinema.update(cinema_params)
      redirect_to @cinema
    else
      render 'edit'
    end
  end

  def destroy
    @cinema.destroy
    redirect_to root_path
  end

  private
  def cinema_params
    params.require(:cinema).permit(:name, :address, :phone_number, :admin_id)
  end

  def find_cinema
    @cinema = Cinema.find(params[:id])
  end
end