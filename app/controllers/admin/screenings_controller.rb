class Admin::ScreeningsController < Admin::BaseController
  before_action :find_screening, only: [:edit, :update, :destroy]

  def new
    @screening = Screening.new
  end

  def create
    @screening = Screening.create(screening_params)
    if @screening.save
      redirect_to @screening
    else
      render 'new'
    end
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