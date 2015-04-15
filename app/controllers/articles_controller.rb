class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @recent_article = Article.last
  end

  def create
  end

  def new
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
end
