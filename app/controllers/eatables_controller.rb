class EatablesController < ApplicationController
  def new
    @eatable = Eatable.new
    @months = Month.all
    @foods = Food.all
  end

  def create
    # @eatable = Eatable.create_eatable(eatable_params)
    @eatable = Eatable.create!(eatable_params)
    # @food.locations << Location.find_by_id(params[:months])
    # @food.attributes = {'locations_ids' => []}.merge(params[:food] || {})
    if @eatable.save
        redirect_to eatables_path(@eatable), :notice => "Eatable created!"
    else
      render :action => "new"
    end
  end

  def index
    # @eatables = Eatable.all
    # @eatables = Eatable.joins(:food).where(:eatables => { :fight_id => @fight.id })
    @eatables = Eatable.all
  end
  def show
    @eatable = Eatable.find params[:id]
    @months = @eatable.months
  end

  private
    def eatable_params
      params.require(:eatable).permit(
        :id,
        :food_id,
        :location_id,
        :description,
        :month_ids => []
      )
    end
end