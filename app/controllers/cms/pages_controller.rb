class Cms::PagesController < Cms::BaseController

  def index
    @grid = initialize_grid(Cms::Page)
  end

  def new
    @page = Cms::Page.new
  end

  def create
    @page = Cms::Page.new(page_params)
    @page.user_id = current_user.id
    @page.save
    redirect_to new_cms_template_path(page: @page.id)
  end
  
  def update
    @page = Cms::Page.find(params[:id])
    @page.user_id = current_user.id
    @page.update(page_params)
    redirect_to cms_pages_path
  end

  def show
    @page = Cms::Page.find(params[:id])
  end
  
  def edit
    @page = Cms::Page.find(params[:id])
  end

  def sections
    @page = Cms::Page.find(params[:page_id])
    @sections = @page.sections
  end

  private

  def page_params
    params.require(:cms_page).permit(:name, :route, :title, :keywords,
                   :description, :enabled, :static, :layout_id)
  end

end
