class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :route
      t.string :title
      t.text :description
      t.boolean :enabled
      t.references :user, index: true

      t.timestamps
    end
    add_index :pages, :route, unique: true
    add_index :pages, :title
  end
end
