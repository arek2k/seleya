class CreateCmsLayouts < ActiveRecord::Migration
  def change
    create_table :cms_layouts do |t|
      t.text :content, limit: 4294967295

      t.timestamps
    end
  end
end
