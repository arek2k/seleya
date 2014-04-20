class ApplicationController < ActionController::Base
  include Cms::Router
  protect_from_forgery with: :null_session
 
  get_route

end
