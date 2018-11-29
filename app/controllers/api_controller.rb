class ApiController < ApplicationController
  def json_index
    res = {}
    categories = Category.all.order(:id).pluck(:name, :id)
    categories.each do |c, id|
      res[c] = Image.where(category_id: id).order("RANDOM()")
    end
    render json: res
  end

  def create_image
    @image = Image.new image_params
    if @image.save
      render json: { result: @image }
    else
      render json: { result: false, errors: @image.errors }
    end
  end

  private

  def image_params
    params.require(:image).permit(:url, :url_thumbnail, :category_id)
  end
end