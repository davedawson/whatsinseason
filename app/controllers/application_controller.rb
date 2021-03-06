class ApplicationController < ActionController::Base
  before_filter :all_locations

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def all_locations
    @locations = Location.all
  end
  def all_months
    @months = Month.all
    @month = Date::MONTHNAMES[Date.today.month]
  end

end
