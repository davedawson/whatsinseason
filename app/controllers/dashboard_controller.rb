class DashboardController < ApplicationController
  def index
    @eatables = Eatable.all
    @date = Date.today.month
    @month = @date
  end
end
