module Api
  class AccessTokensController < ApplicationController
    before_action :set_access_token, only: [:show, :update, :destroy]
    
    # GET /access_tokens
    def index
      @access_tokens = AccessToken.all
      
      render json: @access_tokens
    end
    
    # GET /access_tokens/1
    def show
      render json: @access_token
    end
    
    # POST /access_tokens
    def create
      @access_token = AccessToken.new(access_token_params)
      
      if @access_token.save
        render json: @access_token, status: :created, location: @access_token
      else
        render json: @access_token.errors, status: :unprocessable_entity
      end
    end
    
    # PATCH/PUT /access_tokens/1
    def update
      if @access_token.update(access_token_params)
        render json: @access_token
      else
        render json: @access_token.errors, status: :unprocessable_entity
      end
    end
    
    # DELETE /access_tokens/1
    def destroy
      @access_token.destroy
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_token
      @access_token = AccessToken.find(params[:id])
    end
    
    # Only allow a trusted parameter "white list" through.
    def access_token_params
      params.fetch(:access_token, {})
    end
  end
end
