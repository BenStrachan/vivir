module Admin
  class JobTypesController < BaseController
    before_action :authenticate_user!
    before_action :set_job_type, only: [:show, :edit, :update, :destroy]

    # GET /job_types
    # GET /job_types.json
    def index
      @job_types = current_business.job_types.order(name: :asc).page(params[:page])
    end

    # GET /job_types/1
    # GET /job_types/1.json
    def show
    end

    # GET /job_types/new
    def new
      @job_type = current_business.job_types.new
    end


    def create
      @job_type = current_business.job_types.new(job_type_params)
      if @job_type.save
        redirect_to admin_job_types_path, notice: "Job Type has beed created successfully"
      else
        render :new
      end
    end

    def edit
    end

    def destroy
      @job_type.delete
      redirect_to admin_job_types_path, notice: "Job Type has beed deleted successfully"
    end

    def update
      if @job_type.update job_type_params
        redirect_to admin_job_types_path, notice: "Job Type has beed updated successfully"
      else
        render :edit
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_job_type
        @job_type = current_business.job_types.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def job_type_params
        params.require(:job_type).permit(:name, :default_weekly_visits, :business_id)
      end
  end
end
