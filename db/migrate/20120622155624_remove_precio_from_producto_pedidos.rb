class RemovePrecioFromProductoPedidos < ActiveRecord::Migration
  def up
    remove_column :producto_pedidos, :precio
      end

  def down
    add_column :producto_pedidos, :precio, :float
  end
end
