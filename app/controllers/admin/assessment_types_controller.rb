module Admin
  class AssessmentTypesController < BaseController
    before_action :authenticate_user!
    before_action :set_assessment_type, only: [:show, :edit, :update, :destroy]

    # GET /assessment_types
    # GET /assessment_types.json
    def index
      @assessment_types = current_business.assessment_types.order(created_at: :desc).page(params[:page])
    end

    # GET /assessment_types/1
    # GET /assessment_types/1.json
    def show
    end

    # GET /assessment_types/new
    def new
      @assessment_type = current_business.assessment_types.new
    end


    def create
      @assessment_type = current_business.assessment_types.new(assessment_type_params)
      if @assessment_type.save
        redirect_to admin_assessment_types_path, notice: "Assessment Type has beed created successfully"
      else
        render :new
      end
    end

    def edit
    end

    def destroy
      @assessment_type.delete
      redirect_to admin_assessment_types_path, notice: "Assessment Type has beed deleted successfully"
    end

    def update
      if @assessment_type.update assessment_type_params
        redirect_to admin_assessment_types_path, notice: "Assessment Type has beed updated successfully"
      else
        render :edit
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_assessment_type
        @assessment_type = current_business.assessment_types.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def assessment_type_params
        params.require(:assessment_type).permit(:name, :default_monthly_repeat, :business_id)
      end
  end
end
