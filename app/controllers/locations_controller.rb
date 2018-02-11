class LocationsController < ApplicationController
  before_action :set_garment, if: @garment
  before_action :set_location,only: [:show, :update, :destroy]


  def index
    if params[:garment_id]
      @locations = @garment.locations.all
    else
      @locations = Location.all
    end
    json_response(@locations)

  end

  def show
    json_response(@location)
  end

  def create
    @location = Location.create!(location_params)
    json_response(@location, :created)
  end

  # PATCH/PUT /locations/1
  def update
    @location.update(location_params)
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  private

  def set_garment
    
    if params[:garment_id]
        @garment = Garment.find(params[:garment_id])
    end
  end

  def set_location

    if @garment
      @location =  @garment.locations.find_by!(id: params[:id])
    else
      @location = Location.find(params[:id])
    end

  end


  def location_params
    params.permit(:name, :location_code)
  end
end
