class Cms::ApplicationRouter < ApplicationController
      
  def index

    uri = params[:link].split('/') unless params[:link].nil?

    if uri.nil?
      render text: 'main_page' 
      return
    end

    page = ::Page.find_by route: uri.first
    
    if valid?(uri, page)
      render text: 'ok'
    elsif
      # raise 404
      render text: '404'
    end



  end

  private
  def valid?(uri, page)
    # count, create uri object etc ...
    render text: uri.inspect
    true
  end

end
