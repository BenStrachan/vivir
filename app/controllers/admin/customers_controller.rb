module Admin
  class CustomersController < BaseController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = current_business.customers.order(created_at: :desc).page(params[:page])
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = current_business.customers.new
  end

  # GET /customers/1/edit
  def edit
  end

  def create
    @customer = current_business.customers.new(customer_params)
    if @customer.save
      redirect_to admin_customers_path, notice: "Customer has beed created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @customer.delete
    redirect_to admin_customers_path, notice: "Customer has beed deleted successfully"
  end

  def update
    if @customer.update customer_params
      redirect_to admin_customers_path, notice: "Customer has beed updated successfully"
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:business_name, :first_name, :last_name, :phone, :fax, :email, :address, :city, :state, :country, :business_id)
    end
  end
end
