module Admin
  class JobsController < BaseController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @search = current_business.jobs.ransack(params[:q])

    @jobs = @search.result.order(created_at: :desc).page(params[:page])
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = current_business.jobs.new
  end

  # GET /jobs/1/edit
  def edit
    respond_to do |f|
      f.html
      f.js
    end
  end

  def create
    @job = current_business.jobs.new(job_params)
    if @job.save
      redirect_to admin_jobs_path, notice: "Job has beed created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @job.delete
    redirect_to admin_jobs_path, notice: "Job has beed deleted successfully"
  end

  def update
    if @job.update job_params
      redirect_to admin_jobs_path, notice: "Job has beed updated successfully"
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:job_id, :client_id, :job_type_id, :status, :visit_number, :weekly_visit_total, :user_id, :completed_date, :notes, :business_id)
    end
  end
end
