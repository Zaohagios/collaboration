class BoardNamesController < ApplicationController
  before_action :set_board_name, only: [:show, :edit, :update, :destroy]

  # GET /board_names
  # GET /board_names.json
  def index
    @board_names = BoardName.all
  end

  # GET /board_names/1
  # GET /board_names/1.json
  def show
  end

  # GET /board_names/new
  def new
    @board_name = BoardName.new
  end

  # GET /board_names/1/edit
  def edit
  end

  # POST /board_names
  # POST /board_names.json
  def create
    @board_name = BoardName.new(board_name_params)

    respond_to do |format|
      if @board_name.save
        format.html { redirect_to @board_name, notice: 'Board name was successfully created.' }
        format.json { render :show, status: :created, location: @board_name }
      else
        format.html { render :new }
        format.json { render json: @board_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_names/1
  # PATCH/PUT /board_names/1.json
  def update
    respond_to do |format|
      if @board_name.update(board_name_params)
        format.html { redirect_to @board_name, notice: 'Board name was successfully updated.' }
        format.json { render :show, status: :ok, location: @board_name }
      else
        format.html { render :edit }
        format.json { render json: @board_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_names/1
  # DELETE /board_names/1.json
  def destroy
    @board_name.destroy
    respond_to do |format|
      format.html { redirect_to board_names_url, notice: 'Board name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_name
      @board_name = BoardName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_name_params
      params.require(:board_name).permit(:name, :group)
    end
end
