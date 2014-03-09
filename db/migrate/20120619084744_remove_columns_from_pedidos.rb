class RemoveColumnsFromPedidos < ActiveRecord::Migration
  def up
    remove_column :pedidos, :pago_contado
    add_column :pedidos,:tipo_pago, :string
   end

  def down
    add_column :pedidos, :pago_contado, :string
    remove_column :pedidos, :tipo_pago
  end
end
