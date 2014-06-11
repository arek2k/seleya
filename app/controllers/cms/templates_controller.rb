class Cms::TemplatesController < Cms::BaseController

  def new
    @template = Cms::Template.new
    @page = Cms::Page.find(params[:page])
    @template.page_id = @page.id
  end

  def create
    @template = Cms::Template.new(template_params)
    assign_sections_for @template.content
    @template.save
    redirect_to cms_pages_path
  end
  
  def update
    @template = Cms::Template.find(params[:id])
    @template.update(template_params)
    assign_sections_for @template.content
    @template.save
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

  def assign_sections_for(template)
    sections = template.scan(/section.(\w+)/)
    sections_selected = Cms::Section.select do |section|
      sections.include? [ section.alias ]
    end
    @template.page.sections = sections_selected
  end

end
