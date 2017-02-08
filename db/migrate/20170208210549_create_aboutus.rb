class CreateAboutus < ActiveRecord::Migration[5.0]
  def change
    create_table :aboutus do |t|
      t.string :nombre
      t.text :mision
      t.text :vision
      t.text :descripcion
      t.string :contactenos
      t.string :copyright
      t.string :urlnosotros
      t.string :urlmision
      t.string :urlvision

      t.timestamps
    end
  end
end
