class CreateContactos < ActiveRecord::Migration[5.0]
  def change
    create_table :contactos do |t|
      t.string :titulo
      t.text :peticion
      t.string :nombre
      t.string :correo
      t.string :ciudad
      t.string :telefono
      t.string :codigozip
      t.string :cotizacionpdf

      t.timestamps
    end
  end
end
