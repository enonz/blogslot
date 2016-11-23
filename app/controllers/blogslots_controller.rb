class BlogslotsController < ApplicationController
	layout 'blogslot'
  def index
    @article = Article.last
    @articles = Article.where('id!=?',@article.id).first(5).reverse
    @count_comments = Comment.where('article_id=?',@article.id).count
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