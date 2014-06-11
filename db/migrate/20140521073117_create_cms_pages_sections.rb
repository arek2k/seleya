class CreateCmsPagesSections < ActiveRecord::Migration
  def change
    create_table :cms_pages_sections, :id => false do |t|
      t.belongs_to :page
      t.belongs_to :section
    end
    add_index :cms_pages_sections, [ :page_id, :section_id ]
  end
end
