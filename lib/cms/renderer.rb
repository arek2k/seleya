module Cms::Renderer

  def show(page)

    unless page.instance_of? Cms::Page
      raise ActionController::NotImplemented.new('500')
    end
    
    @title = page.title
    @description = page.description
    
    page_layout = page.layout.content
    page_template = page.template.content

    template_regexp = Regexp.new("{{\s*template\s*}}")
    unless page_layout =~ template_regexp
      raise ActionController::ActionControllerError.new('500')
    end
    page_layout.sub!(template_regexp, page_template)

    parts = Hash.new
    page.sections.each { |s| parts["section_#{s.id}"] = s.content }
   
    render layout: 'cms_frontend', text: Liquid::Template
      .parse(page_layout).render(parts)
  end

end
