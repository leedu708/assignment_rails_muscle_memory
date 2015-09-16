class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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

  def new_article_params

    params.require(:article).permit(:title,:body)

  end

end
