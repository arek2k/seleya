class AddNameToCmsSections < ActiveRecord::Migration
  def change
    add_column :cms_sections, :name, :string, after: :id
    add_index :cms_sections, :name
  end
end
