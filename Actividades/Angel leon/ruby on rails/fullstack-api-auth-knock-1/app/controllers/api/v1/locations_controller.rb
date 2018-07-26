class Api::V1::LocationsController < ApiController
  before_action :set_location, only:[:show]

  def show
  end

  def create
    Location.create(location_params)
    render json: {
      status: true
    }
  end
  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name)
  end
end
