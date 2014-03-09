class ObservacionesParaPedidos < ActiveRecord::Migration
  def up
	add_column :pedidos, :observaciones, :text
  end

  def down
	remove_column :pedidos,:observaciones
  end
end
