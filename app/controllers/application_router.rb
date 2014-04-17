class ApplicationRouter < ApplicationController
      
  def router
    render :text => params[:link]
  end

end
