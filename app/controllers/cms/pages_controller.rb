class Cms::PagesController < Cms::BaseController

  def index
  end

  def new
    @page = Cms::Page.new
  end

  def create
    
    page_params = params.require(:page).permit(:route)
    @page = Page.new(page_params)
    @page.save
    redirect_to @page

  end

  def show
  end

end
