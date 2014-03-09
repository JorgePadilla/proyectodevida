class CreateProductoPedidos < ActiveRecord::Migration
  def change
    create_table :producto_pedidos do |t|
      t.integer :producto_id
      t.integer :pedido_id
      t.integer :cantidad
      t.float :precio

      t.timestamps
    end
  end
end
