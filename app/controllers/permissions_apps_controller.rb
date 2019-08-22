class PermissionsAppsController < ApplicationController
  before_action :set_permissions_app, only: [:show, :update, :destroy]

  # GET /permissions_apps
  def index
    @permissions_apps = PermissionsApp.all

    render json: @permissions_apps
  end

  # GET /permissions_apps/1
  def show
    render json: @permissions_app
  end

  # POST /permissions_apps
  def create
    @permissions_app = PermissionsApp.new(permissions_app_params)

    if @permissions_app.save
      render json: @permissions_app, status: :created, location: @permissions_app
    else
      render json: @permissions_app.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /permissions_apps/1
  def update
    if @permissions_app.update(permissions_app_params)
      render json: @permissions_app
    else
      render json: @permissions_app.errors, status: :unprocessable_entity
    end
  end

  # DELETE /permissions_apps/1
  def destroy
    @permissions_app.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permissions_app
      @permissions_app = PermissionsApp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def permissions_app_params
      params.fetch(:permissions_app, {})
    end
end
