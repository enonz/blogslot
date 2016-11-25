class BlogslotsController < ApplicationController
	layout 'blogslot'
  def index
    @article = Article.last
    @count_comments = Comment.where('article_id=?',@article.id).count
    @articles = Article.where('id != ?',@article.id).order('id DESC').page(params[:page]).per(10)
  end

  def articles
    add_breadcrumb 'Home', root_path
  	@articles = Article.order('id DESC').page(params[:page]).per(10)

  end

  def show
    add_breadcrumb 'Home', root_path
    add_breadcrumb 'Daftar Artikel', article_lists_path
  	id_article = params['id']
  	@article = Article.find id_article
    @comments = Comment.where('article_id=?',@article.id)
  end

end