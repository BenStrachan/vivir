module App
  class ClientsController < BaseController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = current_business.clients.order(created_at: :desc).page(params[:page])
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = current_business.clients.new
  end

  # GET /clients/1/edit
  def edit
  end

  def create
    @client = current_business.clients.new(client_params)
    if @client.save
      redirect_to admin_clients_path, notice: "Client has beed created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @client.delete
    redirect_to admin_clients_path, notice: "Client has beed deleted successfully"
  end

  def update
    if @client.update client_params
      redirect_to admin_clients_path, notice: "Client has beed updated successfully"
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:first_name, :last_name, :date_of_birth, :location_id, :room, :job_type_id, :job_notes, :notes, :business_id)
    end
  end
end
