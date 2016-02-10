class AdminsController < ApplicationController
  before_action :set_users, only: [:show, :users, :boards]
  
  def show
  end
  
  def users
  end
  
  def user
    @user = User.find(params[:id])
  end
  
  def board_update
    @board = Board.find(params[:id])
    if @board.save
      flash[:succes] = "Board Updated!"
      redirect_to request.referer
    else
      render 'new'
    end
  end
  
  def user_update
    @user = User.find(params[:id])
    if @user.save
      flash[:succes] = "Account Updated!"
      redirect_to request.referer
    else
      render 'new'
    end
  end
  
  def boards
    @boards = Board.all
  end
  
  private
    def set_users
      @users = User.all
    end
    
    def user_params
      params.require(:user).permit(:name, :email, :admin)
    end
end