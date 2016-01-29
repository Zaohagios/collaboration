class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:edit, :update, :show, :destroy]
  def new
    @assignment = Assignment.new
  end
  
  def assign_task
    @assignment = Assignment.find(params[:format])
    @assignment.owner = get_user_id()
    @assignment.save 
    redirect_to boards_path
  end

  def drop_task
    @assignment = Assignment.find(params[:format])
    @assignment.owner = 0
    @assignment.save 
    redirect_to boards_path
  end
    
  def index
    @assignments = Assignment.all
  end
  
  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.owner = "0"
    if @assignment.save
      flash[:success] = "Assignment Created!"
      redirect_to boards_path
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def destroy
    @assignment.destroy
    flash[:danger] = "Assignment has been deleted!"
    redirect_to boards_path
  end
  
  def edit
    
  end
  
  def update
    board_id = @assignment.board
    if @assignment.update(assignment_params)
      flash[:success] = "Assignment Updated!"
      redirect_to board_path(board_id)
    else
      render 'edit'
    end
  end
  
  private
    def assignment_params
      params.require(:assignment)
            .permit(:subject, :board, :owner, :body, 
                    :due_date, :level, :status)
    end
    
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end
  
end
