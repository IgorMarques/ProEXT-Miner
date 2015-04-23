class CreateFactProjects < ActiveRecord::Migration
  def change
    create_table :fact_projects do |t|
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
      t.references :theme

      t.timestamps null: false
    end

    Project.all.each do |p|
      FactProject.create(
        title: p.title,
        genre: p.genre,
        status: p.status,
        category: p.category,
        investiment: p.investiment,
        total_costs: p.total_costs,
        total_2015_costs: p.total_2015_costs,
        transfer_2015_costs: p.transfer_2015_costs,
        grade: p.grade,

        institution_id: p.institution_id,
        manager_id: p.manager_id,
        sub_theme_id: p.sub_theme_id,
        theme_id: p.sub_theme.theme_id
      )
    end

  end
end
