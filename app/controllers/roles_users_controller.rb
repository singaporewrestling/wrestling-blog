class RolesUsersController < ApplicationController
  before_action :set_roles_user, only: [:show, :update, :destroy]

  # GET /roles_users
  def index
    @roles_users = RolesUser.all

    render json: @roles_users
  end

  # GET /roles_users/1
  def show
    render json: @roles_user
  end

  # POST /roles_users
  def create
    @roles_user = RolesUser.new(roles_user_params)

    if @roles_user.save
      render json: @roles_user, status: :created, location: @roles_user
    else
      render json: @roles_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roles_users/1
  def update
    if @roles_user.update(roles_user_params)
      render json: @roles_user
    else
      render json: @roles_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /roles_users/1
  def destroy
    @roles_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roles_user
      @roles_user = RolesUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roles_user_params
      params.fetch(:roles_user, {})
    end
end
