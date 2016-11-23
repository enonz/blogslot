class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_filter :authenticate_user!, only: [:create, :edit, :update, :destroy]

  layout :by_resource

  def by_resource
  	if devise_controller?
  		"blogslot"
  	else
  		"application"
  	end
  end
end
