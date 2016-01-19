class Api::ImagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @images = Image.all
    render json: @images
  end

  def create
    image = Image.new(image_params)
    image.save
    redirect_to api_image_path(image)
  end

  def show
    image = Image.find(params[:id])
    render json: image
  end

  def image_params
    params.require(:image).permit(:id)
  end
end
