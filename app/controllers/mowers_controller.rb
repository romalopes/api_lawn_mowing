class MowersController < ApplicationController
  before_action :set_mower, only: [:show, :edit, :update, :destroy]
  before_action :set_lawn, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  

  # GET /mowers
  # GET /mowers.json
  def index
    @mowers = Mower.all
  end

  # GET /mowers/1
  # GET /mowers/1.json
  def show
  end

  # GET /lawns/lawn_id/mowers/new
  def new
    @mower = Mower.new
  end

  # GET /mowers/1/edit
  def edit
  end

  # POST /mowers
  # POST /mowers.json
  def create
    respond_to do |format|
      @mower = @lawn.mowers.create(mower_params)
      if @mower.errors.empty?
        format.html { redirect_to edit_lawn_mower_path(id_lawn: @lawn.id, id: @mower.id), notice: 'Mower was successfully created.' }
        format.json { render :show, status: :created, location: @mower }
      else
        format.html { render :new }
        format.json { render json: @mower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mowers/1
  # PATCH/PUT /mowers/1.json
  def update
    respond_to do |format|
      if @mower.update(mower_params)
        # format.html { redirect_to edit_lawn_mower_path(id_lawn: @lawn.id, id: @mower.id), notice: 'Mower was successfully updated.' }
        format.html { redirect_to lawn_mower_path(id_lawn: @lawn.id, id: @mower.id), notice: 'Mower was successfully updated.' }
        format.json { render :show, status: :ok, location: @mower }
      else
        format.html { render :edit }
        format.json { render json: @mower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mowers/1
  # DELETE /mowers/1.json
  def destroy
    @mower.destroy
    respond_to do |format|
      format.html { redirect_to lawn_mowers_path(lawn_id: @lawn.id), notice: 'Mower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mower
      @mower = Mower.find(params[:id])
    end

    def set_lawn
      @lawn = Lawn.find params[:lawn_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mower_params
      params.require(:mower).permit(:x, :y, :headings, :commands)
    end
end
