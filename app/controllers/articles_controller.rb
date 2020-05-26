class ArticlesController < ApplicationController
  def index
      articles = Article.all
      render json: articles
  end

  def show 
    find_article
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
