class Cms::Dispatcher < ApplicationController
  include Cms::Router
  #include Cms::Renderer

  before_action :get_route!

  def index # dispatch

    @page = Cms::Page.find_by route: @@route
    
    if valid?
      template = @page.content.template
      render text: Liquid::Template.parse(template).render
    elsif
      raise ActionController::RoutingError.new('404') 
    end

  end

private

  def valid?
    return false if @page.nil? || @@route != @page.route
    true
  end

  def render_page
  end

end
