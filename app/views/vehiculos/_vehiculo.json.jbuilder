json.extract! vehiculo, :id, :modelo, :recorrido_id, :pasajero_id, :created_at, :updated_at
json.url vehiculo_url(vehiculo, format: :json)
