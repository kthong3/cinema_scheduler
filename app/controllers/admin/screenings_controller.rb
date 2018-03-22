class Admin::ScreeningsController < Admin::BaseController
  before_action :find_screening, only: [:edit, :update, :destroy]

  def new
    @screening = Screening.new
  end

  def create

    @cinema = Cinema.find(params[:cinema_id])
    @film = Film.find(params[:film_id])
    @screenings = generate_wkday_screenings(@cinema, @film)

    redirect_to @film
  end

  def edit
  end

  def update
    if @screening.update(screening_params)
      redirect_to @screening
    else
      render 'edit'
    end
  end

  def destroy
    @screening.destroy
    redirect_to root_path
  end

  private
  def screening_params
    params.require(:screening).permit(:start_time, :end_time, :cinema_id, :film_id)
  end

  def find_screening
    @screening = Screening.find(params[:id])
  end
end