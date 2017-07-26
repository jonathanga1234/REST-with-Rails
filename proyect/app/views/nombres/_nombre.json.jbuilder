json.extract! nombre, :id, :apellido, :telefono, :created_at, :updated_at
json.url nombre_url(nombre, format: :json)
