class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.text :logradouro
      t.integer :numero
      t.text :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
