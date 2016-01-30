class SessionsController < ApplicationController
  def new
    if logged_in? then 
      redirect_to boards_path
    end
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = 'You have successfully logged in!'
      redirect_to boards_path
    else
      flash[:danger] = 'Invalid Email or/and Password entered.'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to login_path
  end
end
