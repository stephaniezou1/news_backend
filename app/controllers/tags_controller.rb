class TagsController < ApplicationController
  before_action :find_tag, only: [:show]

  def index
    tags = Tag.all
    render json: tags
  end

  def show 
    render json: @tag
  end

  def create
    Tag.find_or_create_by(content: params[:content])
  end

  private
  def find_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:content)
  end
end
