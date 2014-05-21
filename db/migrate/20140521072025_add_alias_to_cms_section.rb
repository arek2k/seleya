class AddAliasToCmsSection < ActiveRecord::Migration
  def change
    add_column :cms_sections, :alias, :string, after: :name
    add_index :cms_sections, :alias, unique: true
  end
end
