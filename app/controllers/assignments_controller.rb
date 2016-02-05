class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:edit, :update, :show, :destroy, :send]
  
  def new
    @assignment = Assignment.new
  end
  
  def assign_task
    @assignment = Assignment.find(params[:format])
    @assignment.owner = session[:user_id]
    @assignment.save 
    redirect_to request.referer
  end

  def assign_show
    @assignment = Assignment.find(params[:format])
  end

  def drop_task
    @assignment = Assignment.find(params[:format])
    @assignment.owner = 0
    @assignment.save
    redirect_to request.referer
  end
    
  def index
    @assignments = Assignment.all
  end
  
  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.owner = "0"
    if @assignment.save
      flash[:success] = "Assignment Created!"
    respond_to do |format|
        format.js
    end
      # redirect_to boards_path
    else
      render 'new'
    end
  end
  
  def show
    respond_to do |format|
      format.js
    end
  end
  

  
  def destroy
    assignment_log
    @assignment.destroy
    flash[:info] = "Assignment Completed!"
    redirect_to request.referer
  end
  
  
  def edit
    
  end
  
  def update
    if @assignment.update(assignment_params)
      flash[:success] = "Assignment Updated!"
      redirect_to request.referer
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

    def assignment_log
      Wash.create(completed_by: session[:user_id], title: @assignment.subject, board: @assignment.board, comments: params[:comment])
    end
    
end
