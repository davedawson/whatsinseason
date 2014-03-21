class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end
  def new
    @food = Food.new
    @locations = Location.all
  end
  def create
    @food = Food.new(params[:food])
    # @food.locations << Location.find_by_id(params[:months])
    # @food.attributes = {'locations_ids' => []}.merge(params[:food] || {})
    if @food.save
        redirect_to foods_url(@food), :notice => "Food created!"
    else
      render :action => "new"
    end
  end
end