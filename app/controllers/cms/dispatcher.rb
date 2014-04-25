class Cms::Dispatcher < ApplicationController
  include Cms::Router
  include Cms::Renderer

  before_action :route!

  def index # dispatch

    page = Cms::Page.find_by route: @@route

    if valid? page
      show page
    else
      raise ActionController::RoutingError.new('404') 
    end

  end


end
