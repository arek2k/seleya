class AddFieldsToCmsPage < ActiveRecord::Migration
  def change
    add_column :cms_pages, :name, :string, after: :id
    add_index :cms_pages, :name
    add_column :cms_pages, :keywords, :text, after: :title
  end
end
