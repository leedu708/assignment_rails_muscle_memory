class ArticlesController < ApplicationController

  def new

    @article = Article.new

  end

  def create

    @article = Article.new(new_article_params)
    
    if @article.save
      redirect_to article_path(@article.id)
    else
      render :new
    end

  end

  def index

    @articles = Article.all

  end

  def show

    @article = Article.find(params[:id])

  end

  def new_article_params

    params.require(:article).permit(:title,:body)

  end
  
end
