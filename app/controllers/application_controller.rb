class ApplicationController < ActionController::Base
  include Cms::Router
  protect_from_forgery with: :null_session
  before_action :get_route!


end
