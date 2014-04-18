class Cms::ApplicationRouter < ApplicationController
      
  def index

    uri = params[:link].split('/')

    unless uri.size > 1
      render text: uri.inspect
    else
      render text: uri.inspect
    end

  end

end
