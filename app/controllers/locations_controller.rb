class LocationsController < ApplicationController
  def index
    @locations = Location.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
  end
end
