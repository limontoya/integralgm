json.extract! producto, :id, :nombre, :descripcion, :caracteristicas, :especificaciones, :avatar, :es_servicio, :es_propio, :nombre_empresa, :sitio_empresa, :url_prod_empresa, :created_at, :updated_at
json.url producto_url(producto, format: :json)