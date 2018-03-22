class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      log_in(@user)
        if @user.is_admin?
          redirect_to admin_user_index_path
        else
          redirect_to films_path
        end
    else
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
