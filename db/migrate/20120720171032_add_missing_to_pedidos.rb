class AddMissingToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :dias_mora, :int
    add_column :pedidos, :estado_pedido, :string
  end
end
