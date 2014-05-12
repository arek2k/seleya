class Cms::PagesController < Cms::BaseController

  def index
    @grid = initialize_grid(Cms::Page)
  end

  def new
    @page = Cms::Page.new
    @sections = Cms::Section.new
    @template = Cms::Template.new
  end

  def create
    page = Cms::Page.new(page_params)
    page.user_id = current_user.id
    page.save
    redirect_to cms_pages_path
  end

  def show
  end

  private

  def page_params
    params.require(:cms_page).permit(:name, :route, :title, :keywords,
                   :description, :enabled, :static, :layout_id)
  end

end
