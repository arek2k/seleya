class Cms::Dispatcher < ApplicationController

  @page = nil

  def index # dispatch

    @page = ::Page.find_by route: @@route
    
    if valid?
      render text: 'render page'
    elsif
      raise ActionController::RoutingError.new('404') 
    end

  end

  private
  def valid?
    return false if @page.nil? || @@route != @page.route
    true
  end

end
