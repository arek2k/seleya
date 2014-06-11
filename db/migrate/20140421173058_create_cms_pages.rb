class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|
      t.string :route
      t.string :title
      t.text :description
      t.boolean :enabled
      t.boolean :static
      t.references :user, index: true

      t.timestamps
    end
    add_index :cms_pages, :route, unique: true
    add_index :cms_pages, :title
  end
end
