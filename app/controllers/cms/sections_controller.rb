class Cms::SectionsController < Cms::BaseController

  def index
    @grid = initialize_grid(Cms::Section)
  end

  def new
    @section = Cms::Section.new
  end

  def create
    @section = Cms::Section.new(section_params)
    @section.save
    redirect_to cms_sections_path
  end
  
  def update
    @section = Cms::Section.find(params[:id])
    status = @section.update(section_params)
    if params.has_key? :ajax
      render json: status
    else
      redirect_to cms_sections_path
    end
  end

  def show
    @section = Cms::Section.find(params[:id])
  end
  
  def edit
    @section = Cms::Section.find(params[:id])
  end

  private

  def section_params
    params.require(:cms_section).permit(:name, :alias, :content)
  end

end
