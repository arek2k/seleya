class Cms::TemplatesController < Cms::BaseController

  def new
    @template = Cms::Template.new
    @template.page_id = params[:page]
  end

  def create
    @template = Cms::Template.new(template_params)
    @template.save
    redirect_to cms_pages_path
  end
  
  def update
    @template = Cms::Template.find(params[:id])
    # @template.page_id =
    @template.update(template_params)
    redirect_to cms_pages_path
  end

  def show
    @template = Cms::Template.find(params[:id])
  end
  
  def edit
    @template = Cms::Template.find(params[:id])
  end

  private

  def template_params
    params.require(:cms_template).permit(:content, :page_id)
  end

end
