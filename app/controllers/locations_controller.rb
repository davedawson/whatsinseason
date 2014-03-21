class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end
  def new
    @location = Location.new
  end
  def create
    @location = Location.new(params[:location])
    if @location.save
        redirect_to locations_url(@location), :notice => "Location created!"
    else
      render :action => "new"
    end
  end
end