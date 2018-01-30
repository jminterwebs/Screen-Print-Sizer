class GarmentsController < ApplicationController
  before_action :set_garment, only: [:show, :update, :destroy]

  # GET /garments
  def index
    @garments = Garment.all

    json_response(@garments)
  end

  # GET /garments/1
  def show
    json_response(@garment)
  end

  # POST /garments
  def create
    @garment = Garment.create!(garment_params)
    json_response(@garment, :created)

  end

  # PATCH/PUT /garments/1
  def update
    @garment.update(garment_params)
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
      params.permit(:name, :style_code)
    end
end
