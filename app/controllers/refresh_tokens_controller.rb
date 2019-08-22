class RefreshTokensController < ApplicationController
  before_action :set_refresh_token, only: [:show, :update, :destroy]

  # GET /refresh_tokens
  def index
    @refresh_tokens = RefreshToken.all

    render json: @refresh_tokens
  end

  # GET /refresh_tokens/1
  def show
    render json: @refresh_token
  end

  # POST /refresh_tokens
  def create
    @refresh_token = RefreshToken.new(refresh_token_params)

    if @refresh_token.save
      render json: @refresh_token, status: :created, location: @refresh_token
    else
      render json: @refresh_token.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /refresh_tokens/1
  def update
    if @refresh_token.update(refresh_token_params)
      render json: @refresh_token
    else
      render json: @refresh_token.errors, status: :unprocessable_entity
    end
  end

  # DELETE /refresh_tokens/1
  def destroy
    @refresh_token.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refresh_token
      @refresh_token = RefreshToken.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def refresh_token_params
      params.fetch(:refresh_token, {})
    end
end
