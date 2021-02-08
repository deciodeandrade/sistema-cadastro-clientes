class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :cnpj
      t.text :razao_social
      t.string :nome_fantasia
      t.string :inscricao_estadual
      t.string :inscricao_municipal
      t.references :endereco, foreign_key: true
      t.references :responsavel, foreign_key: true

      t.timestamps
    end
  end
end
