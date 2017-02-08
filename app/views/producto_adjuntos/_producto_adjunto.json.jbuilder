json.extract! producto_adjunto, :id, :producto_id, :avatar, :created_at, :updated_at
json.url producto_adjunto_url(producto_adjunto, format: :json)