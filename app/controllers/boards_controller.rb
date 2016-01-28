class BoardsController < ApplicationController
  before_action :set_board, only: [:edit, :update, :show, :destroy]
  def new
    @board = Board.new
  end
  
  def index
    # @boards = Board.where(owner: current_user.id).find_each
    @boards = Board.all
  end
  
  def create
    @board = Board.new(board_params)
    if @board.save
      flash[:success] = "Board Created"
      redirect_to board_path(@board)
    else
      render 'new'
    end
  end
  
  def show
    @assignments = Assignment.where(board: @board.group).find_each
  end
  
  def destroy
    @board.destroy
    flash[:danger] = "Board has been deleted!"
    redirect_to boards_path
  end
  
  def edit
  end
  
  def update
    if @board.update(board_params)
      flash[:success] = "Board has been updated."
      redirect_to board_path(@board)
    else
      render 'edit'
    end
  end
  
  private
    def board_params
      params.require(:board).permit(:name, :group, :owner)
    end
    
    def set_board
      @board = Board.find(params[:id])
    end
end
