class GarmentsController < ApplicationController
  before_action :set_garment, only: [:show, :update, :destroy]

  # GET /garments
  def index
    @garments = Garment.all

    render json: @garments
  end

  # GET /garments/1
  def show
    render json: @garment
  end

  # POST /garments
  def create
    @garment = Garment.new(garment_params)

    if @garment.save
      render json: @garment, status: :created, location: @garment
    else
      render json: @garment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /garments/1
  def update
    if @garment.update(garment_params)
      render json: @garment
    else
      render json: @garment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /garments/1
  def destroy
    @garment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment
      @garment = Garment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def garment_params
      params.fetch(:garment, {})
    end
end
