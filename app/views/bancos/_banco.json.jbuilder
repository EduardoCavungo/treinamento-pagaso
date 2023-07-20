json.extract! banco, :id, :nome, :email, :sigla, :morada, :telefone, :web_site, :created_at, :updated_at
json.url banco_url(banco, format: :json)
