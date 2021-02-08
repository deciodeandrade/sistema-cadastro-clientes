json.extract! cliente, :id, :cnpj, :razao_social, :nome_fantasia, :inscricao_estadual, :inscricao_municipal, :endereco_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
