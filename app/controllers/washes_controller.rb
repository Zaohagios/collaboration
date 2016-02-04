class WashesController < ApplicationController
  before_action :set_wash, only: [:show, :edit, :update, :destroy]

  # GET /washes
  # GET /washes.json
  def index
    @washes = Wash.where(board: params[:board]).find_each
  end

  # GET /washes/1
  # GET /washes/1.json
  def show
  end

  # GET /washes/new
  def new
    @wash = Wash.new
    @assignment = Assignment.find(params[:id])
  end

  # GET /washes/1/edit
  def edit
  end

  # POST /washes
  # POST /washes.json
  def create
    @wash = Wash.new(wash_params)
    @assignment = Assignment.find(params[:id])
    respond_to do |format|
      if @wash.save
        @assignment.destroy
        flash[:info] = "Assignment Completed!"
        format.js
      else
        format.js
      end
    end
  end

  # PATCH/PUT /washes/1
  # PATCH/PUT /washes/1.json
  def update
    respond_to do |format|
      if @wash.update(wash_params)
        format.js
      else
        format.js
      end
    end
  end

  # DELETE /washes/1
  # DELETE /washes/1.json
  def destroy
    @wash.destroy
    respond_to do |format|
      format.html { redirect_to washes_url, notice: 'Wash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wash
      @wash = Wash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wash_params
      params.require(:wash).permit(:completed_by, :title, :board, :comment, :assigment_id)
    end
end
