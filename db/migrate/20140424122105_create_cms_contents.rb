class CreateCmsContents < ActiveRecord::Migration
  def change
    create_table :cms_contents do |t|
      t.text :template, limit: 4294967295
      t.references :page, index: true

      t.timestamps
    end
  end
end
