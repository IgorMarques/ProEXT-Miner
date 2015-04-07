class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :title
      t.integer :genre
      t.string  :status
      t.integer :category
      t.decimal :investiment, default: 0
      t.decimal :total_costs, default: 0
      t.decimal :total_2015_costs, default: 0
      t.decimal :transfer_2015_costs, default: 0
      t.decimal :grade, default: 0

      t.references :institution
      t.references :manager
      t.references :sub_theme

      t.timestamps null: false
    end
  end
end
