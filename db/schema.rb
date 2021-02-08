# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_08_203037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "cnpj"
    t.text "razao_social"
    t.string "nome_fantasia"
    t.string "inscricao_estadual"
    t.string "inscricao_municipal"
    t.bigint "endereco_id"
    t.bigint "responsavel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_clientes_on_endereco_id"
    t.index ["responsavel_id"], name: "index_clientes_on_responsavel_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.text "logradouro"
    t.integer "numero"
    t.text "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsavels", force: :cascade do |t|
    t.string "nome"
    t.string "cargo"
    t.string "email"
    t.string "telefone_fixo"
    t.string "ramal"
    t.string "telefone_celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clientes", "enderecos"
  add_foreign_key "clientes", "responsavels"
end
