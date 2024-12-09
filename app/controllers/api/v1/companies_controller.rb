class Api::V1::CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]

  def index
    @companies = Company.all
    render json: { companies: @companies }, except: [:id, :created_at, :updated_at]
  end

  def show
    #render json: @company
    render json: @company.as_json(only: [:id, :name, :location])
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: @company.as_json, status: :created
    else
      render json: {user: @company.errors, status: :no_content}
    end
  end

  def update
    if @company.update(company_params)
      render json: @company
    else
      render json: @company.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @company.destroy
    render json: { message: 'Job successfully deleted' }, status: :ok
  end

  def mark_deleted #destroy
    # company = Company.find(params[:company_id]) # 1-й вариант маршрута
    company = Company.find(params[:id])

    if company.deleted
      puts "deleted: "
      render json: { deleted_company: [],
                     deleted_already: :not_modified,
      }
    else
      company.delete_company	# model method
      render json: { deleted_company: company,
                     code: 200,
                     status: :success,
      }, except: [:created_at, :updated_at]
    end
  end

  private
  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.permit(:name, :location)
  end
end