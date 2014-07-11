class OpenPositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_open_position, only: [:show, :edit, :update, :destroy]


  # GET /open_positions
  # GET /open_positions.json
  def index
    @open_positions = OpenPosition.all
  end

  # GET /open_positions/1
  # GET /open_positions/1.json
  def show
  end

  # GET /open_positions/new
  def new
    @open_position = OpenPosition.new
  end

  # GET /open_positions/1/edit
  def edit
  end

  # POST /open_positions
  # POST /open_positions.json
  def create
    @open_position = OpenPosition.new(open_position_params)

    respond_to do |format|
      if @open_position.save
        format.html { redirect_to @open_position, notice: 'Open position was successfully created.' }
        format.json { render :show, status: :created, location: @open_position }
      else
        format.html { render :new }
        format.json { render json: @open_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_positions/1
  # PATCH/PUT /open_positions/1.json
  def update
    respond_to do |format|
      if @open_position.update(open_position_params)
        format.html { redirect_to @open_position, notice: 'Open position was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_position }
      else
        format.html { render :edit }
        format.json { render json: @open_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_positions/1
  # DELETE /open_positions/1.json
  def destroy
    @open_position.destroy
    respond_to do |format|
      format.html { redirect_to open_positions_url, notice: 'Open position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_position
      @open_position = OpenPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_position_params
      params.require(:open_position).permit(:open_position, :details, :interest)
    end
end
