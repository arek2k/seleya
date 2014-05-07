class AddNameToCmsLayout < ActiveRecord::Migration
  def change
    add_column :cms_layouts, :name, :string, after: :id
  end
end
