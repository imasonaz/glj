class ArticlesController < ActionController::Base
  before_action :authenticate_user!, except: [:show_page]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit!
  end
end
