class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :genre
      t.string :status
      t.string :category
      t.decimal :investiment, default: 0
      t.decimal :grade, default: 0

      t.references :institution
      t.references :manager
      t.references :sub_theme

      t.timestamps null: false
    end
  end
end
