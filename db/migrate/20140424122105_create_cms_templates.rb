class CreateCmsTemplates < ActiveRecord::Migration
  def change
    create_table :cms_templates do |t|
      t.text :content, limit: 4294967295
      t.references :page, index: true

      t.timestamps
    end
  end
end
