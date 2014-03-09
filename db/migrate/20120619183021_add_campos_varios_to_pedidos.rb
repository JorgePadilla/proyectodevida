class AddCamposVariosToPedidos < ActiveRecord::Migration
  def change
    rename_column :pedidos, :fecha_pedido,:fecha_evento
    add_column :pedidos, :fecha_ingreso, :date
    remove_column :pedidos, :fecha_fin_pago
    add_column :pedidos, :num_dias_descuento, :integer
    add_column :pedidos, :rvi, :string
  end
end
