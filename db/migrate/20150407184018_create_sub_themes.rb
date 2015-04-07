class CreateSubThemes < ActiveRecord::Migration
  def change
    create_table :sub_themes do |t|
      t.string :name
      t.text :description

      t.references :theme

      t.timestamps null: false
    end
  end
end
