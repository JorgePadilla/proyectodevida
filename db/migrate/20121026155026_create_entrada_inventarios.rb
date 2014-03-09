class CreateEntradaInventarios < ActiveRecord::Migration
  def change
    create_table :entrada_inventarios do |t|
      t.string :numero
      t.date :fecha
      t.integer :inventario_id
      t.string :proveedor
      t.integer :cantidad
      t.float :valor_unitario

      t.timestamps
    end
  end
end
