class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_model, only: [:edit, :update, :destroy]
  
  def index
    @images = Image.order(:id).all.paginate(:page => params[:page], per_page: 300)
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new image_params
    if @image.save
      redirect_to images_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @image.update_attributes image_params
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    @image.destroy
    redirect_to images_path
  end

  private

  def find_model
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:url, :url_thumbnail, :category_id)
  end
end
