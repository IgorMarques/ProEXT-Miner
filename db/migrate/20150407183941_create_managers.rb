class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :cpf
      t.string :email

      t.references :institution

      t.timestamps null: false
    end
  end
end
