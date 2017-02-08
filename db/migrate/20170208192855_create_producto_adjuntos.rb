class CreateProductoAdjuntos < ActiveRecord::Migration[5.0]
  def change
    create_table :producto_adjuntos do |t|
      t.integer :producto_id
      t.string :avatar

      t.timestamps
    end
  end
end
