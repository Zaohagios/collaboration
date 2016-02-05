class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def edit
    set_user()
  end
  
  def show
  end
  
  def update
    set_user()
    if @user.save
      flash[:success] = "Account Updated!"
      redirect_to boards_path
    else
      render 'new'
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:sucess] = "Account for " + @user.email + " is now regisred."
      redirect_to boards_path
    else
      render 'new'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
    end
    
    def set_user
      @user = User.find(session[:user_id])
    end
end