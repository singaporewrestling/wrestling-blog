class PostsTagsController < ApplicationController
  before_action :set_posts_tag, only: [:show, :update, :destroy]

  # GET /posts_tags
  def index
    @posts_tags = PostsTag.all

    render json: @posts_tags
  end

  # GET /posts_tags/1
  def show
    render json: @posts_tag
  end

  # POST /posts_tags
  def create
    @posts_tag = PostsTag.new(posts_tag_params)

    if @posts_tag.save
      render json: @posts_tag, status: :created, location: @posts_tag
    else
      render json: @posts_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts_tags/1
  def update
    if @posts_tag.update(posts_tag_params)
      render json: @posts_tag
    else
      render json: @posts_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts_tags/1
  def destroy
    @posts_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posts_tag
      @posts_tag = PostsTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def posts_tag_params
      params.fetch(:posts_tag, {})
    end
end
