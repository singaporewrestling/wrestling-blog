class ClientTrustedDomainsController < ApplicationController
  before_action :set_client_trusted_domain, only: [:show, :update, :destroy]

  # GET /client_trusted_domains
  def index
    @client_trusted_domains = ClientTrustedDomain.all

    render json: @client_trusted_domains
  end

  # GET /client_trusted_domains/1
  def show
    render json: @client_trusted_domain
  end

  # POST /client_trusted_domains
  def create
    @client_trusted_domain = ClientTrustedDomain.new(client_trusted_domain_params)

    if @client_trusted_domain.save
      render json: @client_trusted_domain, status: :created, location: @client_trusted_domain
    else
      render json: @client_trusted_domain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /client_trusted_domains/1
  def update
    if @client_trusted_domain.update(client_trusted_domain_params)
      render json: @client_trusted_domain
    else
      render json: @client_trusted_domain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /client_trusted_domains/1
  def destroy
    @client_trusted_domain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_trusted_domain
      @client_trusted_domain = ClientTrustedDomain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_trusted_domain_params
      params.fetch(:client_trusted_domain, {})
    end
end
