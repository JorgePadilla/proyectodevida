class AddColumnasToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :telefono_conyugue, :string
    add_column :pedidos, :referencia2, :string
    add_column :pedidos, :telefono_referencia2, :string
    add_column :pedidos, :descuento, :float
    add_column :pedidos, :mora, :float
    add_column :pedidos, :pago_contado, :boolean
    remove_column :pedidos, :codificador
  end
end
