json.extract! contacto, :id, :titulo, :peticion, :nombre, :correo, :ciudad, :telefono, :codigozip, :cotizacionpdf, :created_at, :updated_at
json.url contacto_url(contacto, format: :json)