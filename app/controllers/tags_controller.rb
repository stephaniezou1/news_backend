class TagsController < ApplicationController
  def index
    tags = Tag.all
    render json: tags
  end

  def show 
    find_tag
    render json: tag
  end

  private
  def find_tag
    tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:content, :article)
  end
end
