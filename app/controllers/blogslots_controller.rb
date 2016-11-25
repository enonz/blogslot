class BlogslotsController < ApplicationController
	layout 'blogslot'
  def index
    @article = Article.last
    @count_comments = Comment.where('article_id=?',@article.id).count
    @articles = Article.order('id DESC').page(params[:page]).per(1)
  end

  def articles
  	@articles = Article.select('id,title,content').reverse

  end

  def show
  	id_article = params['id']
  	@article = Article.find id_article
    @comments = Comment.where('article_id=?',@article.id)
  end

end