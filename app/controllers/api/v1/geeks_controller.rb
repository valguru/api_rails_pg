class Api::V1::GeeksController < ApplicationController
  before_action :set_geek, only: [:show, :update, :destroy]

  def index
    @geeks = Geek.all
    render json: { geeks: @geeks }, except: [:id, :created_at, :updated_at]
  end

  def show
    #render json: @geek
    render json: @geek.as_json(only: [:id, :name, :stack, :resume])
  end

  def create
    @geek = Geek.new(geek_params)
    if @geek.save
      render json: @geek.as_json, status: :created
    else
      render json: {user: @geek.errors, status: :no_content}
    end
  end

  def update
    if @geek.update(geek_params)
      render json: @geek
    else
      render json: @geek.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @geek.destroy
    render json: { message: 'Job successfully deleted' }, status: :ok
  end

  def mark_deleted #destroy
    geek = Geek.find(params[:id])

    if geek.deleted
      puts "deleted: "
      render json: { deleted_geek: [],
                     deleted_already: :not_modified,
      }
    else
      geek.delete_geek	# model method
      render json: { deleted_geek: geek,
                     code: 200,
                     status: :success,
      }, except: [:created_at, :updated_at]
    end
  end

  private
  def set_geek
    @geek = Geek.find(params[:id])
  end

  def geek_params
    params.permit(:name, :stack, :resume)
  end
end