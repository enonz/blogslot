module Blogslot
	class Api < Grape::API
		version 'v1', using: :path
		format :json
		rescue_from :all 

		error_formatter :json, Blogslot::ErrorFormatter

		helpers do
			def current_user
				# @current_user = current_user if user_signed_in?
				current_user
			end

			def authenticate!
				# error!('404 Unauthorized',401) unless current_user
			end

			def admin!
				# error!('404 Unauthorized',401) unless (current_user && current_user.admin=true)
			end
			# def get_user(user_id)
			# 	user = User.find user_id
			# 	case user
			# 	when !user.id.nil?
			# 		user
			# 	else
			# 		raise StandardError.new 'no user found'
			# 	end
			# end
		end
		resource :users do
			desc 'get user data'
			params do
				requires :user_id, type: Integer
			end
			get 'profile'  do
				authenticate!
				{user_profile: User.find(params[:user_id])}
				
			end
		end

		resource :articles do
			desc 'get top 10 newest articles'
			get 'newest' do
				{
					newest_articles: Article.order('id DESC').limit(10)
				}
			end

			desc 'post a comment to an article'
			params do
				requires :title, type: String, desc: 'Judul Artikel'
				requires :content, type: String, desc: 'Isi Artikel'

			end
			post 'commenting' do
				authenticate!
				Comment.create!({
					content: params[:comment],
					user_id: params[:user_id],
					article_id: params[:article_id]
					})
			end

			desc 'update an article'
			params do
				requires :id, type: Integer, desc: 'ID Artikel'
			end
			put ':id' do
				admin!
				Article.find(params[:id]).update({
					title: params[:title],
					content: params[:content],
					image: params[:image]
					})
			end

			desc 'delete an article'
			params do
				requires :id, type: Integer, desc: 'ID Artikel'
			end
			delete ':id' do
				admin!
				Article.find(params[:id]).destroy_all
			end
		end
	end
end