class CreateProductoIngresos < ActiveRecord::Migration
  def change
    create_table :producto_ingresos do |t|
      t.integer :producto_id
      t.date :fecha_ingreso
      t.string :documento_ingreso
      t.integer :cantidad_ingreso
      t.float :valor_producto

      t.timestamps
    end
  end
end
