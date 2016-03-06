# require 'lawn_mowing'
require "#{Rails.root}/lib/lawn_mowing/lawn_mowing.rb"


class LawnsController < ApplicationController
  before_action :set_lawn, only: [:show, :edit, :update, :destroy, :execute]


  # GET /lawns
  # GET /lawns.json
  def index
    @lawns = Lawn.all
  end

  # GET /lawns/1
  # GET /lawns/1.json
  def show
  end

  # GET /lawns/new
  def new
    @lawn = Lawn.new
  end

  # GET /lawns/1/edit
  def edit
  end

  # POST /lawns
  # POST /lawns.json
  def create
    @lawn = Lawn.new(lawn_params)

    respond_to do |format|
      if @lawn.save
        format.html { redirect_to @lawn, notice: 'Lawn was successfully created.' }
        format.json { render :show, status: :created, location: @lawn }
      else
        format.html { render :new }
        format.json { render json: @lawn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lawns/1
  # PATCH/PUT /lawns/1.json
  def update
    respond_to do |format|
      if @lawn.update(lawn_params)
        format.html { redirect_to @lawn, notice: 'Lawn was successfully updated.' }
        format.json { render :show, status: :ok, location: @lawn }
      else
        format.html { render :edit }
        format.json { render json: @lawn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lawns/1
  # DELETE /lawns/1.json
  def destroy
    @lawn.destroy
    respond_to do |format|
      format.html { redirect_to lawns_url, notice: 'Lawn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def execute
    LawnMowing::MowingSystem.init_run_system("#{Rails.root}/lib/lawn_mowing/manual_mowing.txt")

    array_list = @lawn.array_positions
    mowing_system = LawnMowing::MowingSystem.init_run_system(array_list)
    @lawn.set_mowers_values(mowing_system.lawn_mowers_positions)



    respond_to do |format|
      format.html { redirect_to @lawn, notice: 'Mowing system was run.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lawn
      @lawn = Lawn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lawn_params
      params.require(:lawn).permit(:width, :height)
    end
end
