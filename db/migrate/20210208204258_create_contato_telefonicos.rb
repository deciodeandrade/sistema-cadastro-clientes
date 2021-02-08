class CreateContatoTelefonicos < ActiveRecord::Migration[5.2]
  def change
    create_table :contato_telefonicos do |t|
      t.string :telefone_fixo
      t.string :ramal
      t.string :telefone_celular
      t.references :responsavel, foreign_key: true

      t.timestamps
    end
  end
end
