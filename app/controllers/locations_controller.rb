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
  def show
    @location = Location.find params[:id]
    # @months = @location.months
    @eatables = Eatable.where(:location_id => params[:id])
    # @foods = @eatables.foods
    # @months.each do |month|
    #   @food = month.foods
    # end
  end
end