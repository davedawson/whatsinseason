class EatablesController < ApplicationController
  def index
    # @eatables = Eatable.all
    # @eatables = Eatable.joins(:food).where(:eatables => { :fight_id => @fight.id })
    @eatables = Eatable.all
  end
  def show
    @eatable = Eatable.find params[:id]
    @foods = Food.where(:id => @eatable.food_id)
  end
end