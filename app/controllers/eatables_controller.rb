class EatablesController < ApplicationController
  def index
    @eatables = Eatable.all
  end
end