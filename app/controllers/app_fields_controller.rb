class AppFieldsController < ApplicationController
  before_action :set_app_field, only: [:show, :update, :destroy]

  # GET /app_fields
  def index
    @app_fields = AppField.all

    render json: @app_fields
  end

  # GET /app_fields/1
  def show
    render json: @app_field
  end

  # POST /app_fields
  def create
    @app_field = AppField.new(app_field_params)

    if @app_field.save
      render json: @app_field, status: :created, location: @app_field
    else
      render json: @app_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app_fields/1
  def update
    if @app_field.update(app_field_params)
      render json: @app_field
    else
      render json: @app_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /app_fields/1
  def destroy
    @app_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_field
      @app_field = AppField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def app_field_params
      params.fetch(:app_field, {})
    end
end
