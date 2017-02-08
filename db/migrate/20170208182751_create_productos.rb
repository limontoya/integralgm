class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.text :caracteristicas
      t.text :especificaciones
      t.string :avatar
      t.boolean :es_servicio
      t.boolean :es_propio
      t.string :nombre_empresa
      t.string :sitio_empresa
      t.string :url_prod_empresa

      t.timestamps
    end
  end
end
