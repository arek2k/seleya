# Seed data for application

layout = Cms::Layout.create([{ id: 1, 
                               name: 'Test layout 1',
                               content: '<b>This is test layout:</b>
                                         <br /> {{ template }}' },
                              { id: 2, 
                               name: 'Test layout 2',
                               content: '<b>This is test layout 2:</b>
                                         <br /> {{ template }}' }]),

test_page = Cms::Page.create(id: 1, route: 'test.html', title: 'Test page title',
                             description: 'Test page description', enabled: 1,
                             static: 1, layout_id: 1, user_id: 1)

Cms::Template.create(id: 1, 
                     content: 'Template for test page,
                             section 1: {{ section_1 }} <br />
                             section 2: {{ section_2 }}',
                     page_id: test_page.id)

Cms::Section.create([{ id: 1, name: 'Section 1', content: '<b>Section 1</b>',
                       page_id: test_page.id }, 
                     { id: 2, name: 'Section 2', content: '<b>Section 2</b>',
                       page_id: test_page.id }])
