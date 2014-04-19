class Cms::ApplicationRouter < ApplicationController
  include Cms::Router

  def index

    route, args = get_route

    page = ::Page.find_by route: route
    
    if valid?(route, page)
      render text: 'render page'
    elsif
      raise ActionController::RoutingError.new('404') 
    end

  end

  private
  def valid?(route, page)
    return false if page.nil? || route != page.route
    true
  end

end
