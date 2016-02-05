class StandardWorksController < ApplicationController
  before_action :set_standard_work, only: [:show, :edit, :update, :destroy]

  # GET /standard_works
  # GET /standard_works.json
  def index
    @standard_works = StandardWork.all
  end

  def show_board_sw
    @standard_works = StandardWork.where(params[1]).find_each
  end

  # GET /standard_works/1
  # GET /standard_works/1.json
  
  def show
  end

  # GET /standard_works/new
  def new
    @standard_work = StandardWork.new
  end

  # GET /standard_works/1/edit
  def edit
  end

  # POST /standard_works
  # POST /standard_works.json
  def create
    @standard_work = StandardWork.new(standard_work_params)
    @standard_work.owner = 0
    respond_to do |format|
      if @standard_work.save
        format.html { redirect_to @standard_work, notice: 'Standard work was successfully created.' }
        format.json { render :show, status: :created, location: @standard_work }
        format.js
      else
        format.html { render :new }
        format.json { render json: @standard_work.errors, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  # PATCH/PUT /standard_works/1
  # PATCH/PUT /standard_works/1.json
  def update
    respond_to do |format|
      if @standard_work.update(standard_work_params)
        format.html { redirect_to @standard_work, notice: 'Standard work was successfully updated.' }
        format.json { render :show, status: :ok, location: @standard_work }
      else
        format.html { render :edit }
        format.json { render json: @standard_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standard_works/1
  # DELETE /standard_works/1.json
  def destroy
    @standard_work.destroy
    respond_to do |format|
      format.html { redirect_to standard_works_url, notice: 'Standard work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standard_work
      @standard_work = StandardWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standard_work_params
      params.require(:standard_work).permit(:subject, :board, :start_time, :due_time, :sun, :mon, :tue, :wed, :thu, :fri, :sat, :level, :owner)
    end
end
