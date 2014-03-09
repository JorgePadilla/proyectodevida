class AddNumeroPedidoToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :numero_pedido, :integer
  end
end
