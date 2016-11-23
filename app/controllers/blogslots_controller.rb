class BlogslotsController < ApplicationController
	layout 'blogslot'
  def index
    @article = Article.last
    @articles = Article.where('id!=?',@article.id).first(5).reverse
    @comments = Comment.select('user_id,content').where('article_id=?',@article.id)
  end

  def articles
  	@articles = Article.select('id,title,content').reverse
  end

  def show
  	id_article = params['id']
  	@article = Article.find id_article

  end

  def post_comment
  	raise params.inspect
  	id_article = params['id']
  	comments = params['comment']
  	comment = Comment.new
  	comment.content = comments
  	comment.article_id = id_article
  	comment.save
  end

end