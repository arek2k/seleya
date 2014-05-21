# Seed data for application

layout = Cms::Layout.create(
  [{ id: 1, name: 'Test layout 1', content: '<b>This is test layout:</b>
                                             <br /> {{ template }}' },
   { id: 2, name: 'Test layout 2', content: '<b>This is test layout 2:</b>
                                             <br /> {{ template }}' }]),

page = Cms::Page.create(
  id: 1, name: 'Test CMS Page 1', route: 'test.html', 
  title: 'Test page title', keywords: 'test, page, first page, cms tests', 
  description: 'Test page description', enabled: 1,
  static: 1, layout_id: 1, user_id: 1)

Cms::Template.create(
  id: 1,  content: 'Template for test page,
                    section 1: {{ section.first_section }} <br />
                    section 2: {{ section.second_section }}',
  page_id: page.id)

page.sections.create(id: 1, name: 'Section 1', alias: 'first_section', content: '<b>Section 1</b>')
page.sections.create(id: 2, name: 'Section 2', alias: 'second_section', content: '<b>Section 2</b>')
