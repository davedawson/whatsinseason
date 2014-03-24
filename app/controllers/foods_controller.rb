class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
    @locations = Location.all
  end

  def show
    @food = Food.find params[:id]
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