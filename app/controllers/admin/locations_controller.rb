module Admin
  class LocationsController < BaseController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @locations = current_business.locations.order(created_at: :desc).page(params[:page])
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = current_business.locations.new
  end

  # GET /locations/1/edit
  def edit
  end

  def create
    @location = current_business.locations.new(location_params)
    if @location.save
      redirect_to admin_locations_path, notice: "Location has beed created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @location.delete
    redirect_to admin_locations_path, notice: "Location has beed deleted successfully"
  end

  def update
    if @location.update location_params
      redirect_to admin_locations_path, notice: "Location has beed updated successfully"
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:customer_id, :name, :phone, :fax, :email, :address, :city, :state, :country, :business_id)
    end
  end
end
