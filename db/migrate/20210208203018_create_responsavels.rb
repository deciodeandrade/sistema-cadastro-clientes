class CreateResponsavels < ActiveRecord::Migration[5.2]
  def change
    create_table :responsavels do |t|
      t.string :nome
      t.string :cargo
      t.string :email
      t.string :telefone_fixo
      t.string :ramal
      t.string :telefone_celular

      t.timestamps
    end
  end
end
