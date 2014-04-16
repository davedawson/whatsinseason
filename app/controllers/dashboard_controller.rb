class DashboardController < ApplicationController
  has_mobile_fu false
  # has_mobile_fu_for :index

  def index
    @eatables = Eatable.all
    @date = Date.today.month
    @month = @date
    if is_mobile_device?
      @mobile = "test"
    else
      # render :layout => "desktop_home"
    end
  end
end
