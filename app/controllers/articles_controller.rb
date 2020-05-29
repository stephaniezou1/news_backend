class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update]
  
  def index
      articles = Article.all
      render json: articles
  end

  def show 
    render json: article
  end

  def update
    article.update(article_params)
    render json: article
  end

  private
  def find_article
    article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:content, :article)
  end
end