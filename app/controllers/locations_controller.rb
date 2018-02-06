class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  def index
    @locations = Location.all

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

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.permit(:name, :location_code)
  end
end
