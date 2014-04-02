class EatablesController < ApplicationController
  before_action :authenticate_user!
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
    @eatables = Eatable.all
    @date = Date.today.month
    @month = @date
    # @eatables.each do |eatable|
    #   if eatable.month_ids.include?(2)
    #     puts @eatable
    #   end
    # end

    # @eatables = Eatable.joins(:food).where(:eatables => { :fight_id => @fight.id })
    # @eatables = Eatable.where(:month_ids => 2)

    # @passport_visa_supplement_o = PassportVisa.includes([:assets, :country]).uniq.where(:visa_type => 'Official' ,:assets => {:pdf_type => 'supplement'}).order("countries.name ASC")

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