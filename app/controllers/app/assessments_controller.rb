module App
  class AssessmentsController < BaseController
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]
  before_action only: [:index] do
    load_ransack_params('app_assessments')
  end

  # GET /assessments
  # GET /assessments.json
  def index
    @search = current_business.assessments.joins(:client)
                              .where(clients: {location_id: current_user.locations.pluck(:id)})
                              .ransack(params[:q])

    @assessments = @search.result.order(created_at: :desc).page(params[:page])
  end

  # GET /assessments/1
  # GET /assessments/1.json
  def show
  end

  # GET /assessments/new
  def new
    @assessment = current_business.assessments.new
  end

  # GET /assessments/1/edit
  def edit
  end

  def create
    @assessment = current_business.assessments.new(assessment_params)
    if @assessment.save
      redirect_to admin_assessments_path, notice: "Assessment has beed created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @assessment.delete
    redirect_to admin_assessments_path, notice: "Assessment has beed deleted successfully"
  end

  def update
    if @assessment.update assessment_params
      redirect_to admin_assessments_path, notice: "Assessment has beed updated successfully"
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment
      @assessment = Assessment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_params
      params.require(:assessment).permit(:client_id, :user_id, :assessment_type_id, :assessment_completed, :assessment_expired, :status, :notes, :business_id, :attachment)
    end
  end
end
