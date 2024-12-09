class Api::V1::JobsController < ApplicationController
  # GET /api/v1/jobs
  def index
    @jobs = Job.all
    render json: @jobs, each_serializer: JobSerializer
  end

  # GET /api/v1/jobs/:id
  def show
    @job = Job.find(params[:id])
    render json: @job
  end

  # POST /api/v1/jobs
  def create
    @job = Job.new(job_params)
    if @job.save
      render json: @job, status: :created
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/jobs/:id
  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      render json: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/jobs/:id
  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    head :no_content
  end

  private
    def job_params
      params.require(:job).permit(:name, :place, :company_id)
    end
end

