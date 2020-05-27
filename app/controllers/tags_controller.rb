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
    @tag = Tag.find_or_create_by(content: params[:content])
    Joiner.create(tag_id: @tag.id, article_id: params[:article_id])
    @article = Article.find_by(id: params[:article_id])
    render json: @article
  end

  private
  def find_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:content)
  end
end
