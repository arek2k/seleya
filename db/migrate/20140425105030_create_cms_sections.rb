class CreateCmsSections < ActiveRecord::Migration
  def change
    create_table :cms_sections do |t|
      t.text :content, limit: 16777215
      t.references :page, index: true

      t.timestamps
    end
  end
end
