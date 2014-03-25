class FoodsController < ApplicationController
  def index
    # @foods = Food.all
    # @eatables = Eatable.where(:location_id => 1)
    @eatables = Eatable.all
    @date = Date.today.month
    @month = @date
  end

  def new
    @food = Food.new
    @locations = Location.all
  end

  def show
    @food = Food.find params[:id]
    @eatable = Eatable.new
    @months = Month.all
    @locations = Location.all
    @eatables = Eatable.where(:food_id == @food.id)
    # @eatables = Eatable.where(:location_id == @food.id && :location_id == )
    # @locations = Location.includes(:eatables).where( :eatables => { :location_id => nil } )
    # @locations = Location.includes(:eatables).where(:eatables => { :food_id => 8, :location_id => nil })

    @food.eatables.each do |location|
      @location = Location.find_by_id(location.location_id)
      # @months = @location.months
    end
  end
  def create
    @food = Food.create!(food_params)
    # @food.locations << Location.find_by_id(params[:months])
    # @food.attributes = {'locations_ids' => []}.merge(params[:food] || {})
    if @food.save
        redirect_to food_path(@food), :notice => "Food created!"
    else
      render :action => "new"
    end
  end

  private
    def food_params
      params.require(:food).permit(
        :id,
        :title,
        :description,
        :image
      )
    end
end