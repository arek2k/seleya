class RemovePageIdFromCmsSection < ActiveRecord::Migration
  def change
    remove_column :cms_sections, :page_id
  end
end
