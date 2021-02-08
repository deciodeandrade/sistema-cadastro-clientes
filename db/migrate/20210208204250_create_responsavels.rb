class CreateResponsavels < ActiveRecord::Migration[5.2]
  def change
    create_table :responsavels do |t|
      t.string :nome
      t.string :cargo
      t.string :email
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
