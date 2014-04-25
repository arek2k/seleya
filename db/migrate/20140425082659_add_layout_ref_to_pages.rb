class AddLayoutRefToPages < ActiveRecord::Migration
  def change
    add_reference :cms_pages, :layout, index: true, after: :static
  end
end
