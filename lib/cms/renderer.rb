module Cms::Renderer

  def show(page)
    @title = page.title
    @description = page.description
    
    page_template = page.content.template
    page_layout = page.layout.layout

    raise ActionController::RoutingError.new('500') unless page_layout.include? '{{ yield }}'
    page_layout.sub!('{{ yield }}', page_template)

    render layout: 'cms_frontend', text: Liquid::Template.parse(page_layout).render
  end

end
