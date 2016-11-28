#users.rb
module API
	module V1
		class Users < Grape::API
			version 'v1'
			format :json

			resource :users do
				desc "return list of user data"
				get ':id' do
					User.find(params[:id])
				end
			end
		end
	end
end