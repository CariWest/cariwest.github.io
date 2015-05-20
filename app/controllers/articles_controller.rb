class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @recent_article = Article.last
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save!
      redirect_to article_path(@article)
    else
      # render page w/ errors
    end
  end

  def edit
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
  end

  def delete
  end

  private

  def article_params
    params.require(:article).permit(:title, :excerpt, :content)
  end
end
