module Api
  class PermissionsUsersController < ApplicationController
    before_action :set_permissions_user, only: [:show, :update, :destroy]
    
    # GET /permissions_users
    def index
      @permissions_users = PermissionsUser.all
      
      render json: @permissions_users
    end
    
    # GET /permissions_users/1
    def show
      render json: @permissions_user
    end
    
    # POST /permissions_users
    def create
      @permissions_user = PermissionsUser.new(permissions_user_params)
      
      if @permissions_user.save
        render json: @permissions_user, status: :created, location: @permissions_user
      else
        render json: @permissions_user.errors, status: :unprocessable_entity
      end
    end
    
    # PATCH/PUT /permissions_users/1
    def update
      if @permissions_user.update(permissions_user_params)
        render json: @permissions_user
      else
        render json: @permissions_user.errors, status: :unprocessable_entity
      end
    end
    
    # DELETE /permissions_users/1
    def destroy
      @permissions_user.destroy
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_permissions_user
      @permissions_user = PermissionsUser.find(params[:id])
    end
    
    # Only allow a trusted parameter "white list" through.
    def permissions_user_params
      params.fetch(:permissions_user, {})
    end
  end
end