class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  layout :by_resource

  def by_resource
  	if devise_controller?
  		"blogslot"
  	else
  		"application"
  	end
  end
end
