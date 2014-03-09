class CambiosVariosCuota < ActiveRecord::Migration
  def up
	rename_column :cuota,:num_liquidacion,:num_cuota
	add_column :cuota,:pedido_id,:int
	add_column :cuota,:liquidado,:boolean
	remove_column :cuota,:liquidacion
  end

  def down
	rename_column :cuota,:num_cuota,:num_liquidacion
	remove_column :cuota,:pedido_id
	remove_column :cuota,:liquidado
	add_column :cuota,:liquidacion
  end
end
