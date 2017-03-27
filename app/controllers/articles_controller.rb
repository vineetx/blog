class ArticlesController < ApplicationController
  def new
  	@article = Article.new
  end

  def create
  	@artic=Article.new(par)

    if @artic.save
	    redirect_to root_path
    else
      redirect_to new_article_path
      flash[:notice] = "Sorry bro it can't be empty :D"
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @arti = Article.find(params[:id])
    @arti.update(par)
    redirect_to root_path
  end

  def destroy
    @arti = Article.find(params[:id])
    @arti.delete
    redirect_to root_path
  end

  private

  def par
  	params.require(:article).permit([:title, :text])
  end
end
