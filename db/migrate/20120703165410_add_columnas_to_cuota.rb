class AddColumnasToCuota < ActiveRecord::Migration
  def change
    add_column :cuota, :fecha, :date
    add_column :cuota, :valor, :double
    add_column :cuota, :valor_credito, :double
    add_column :cuota, :valor_deposito, :double
    add_column :cuota, :mora, :double
    add_column :cuota, :descuento, :double
    add_column :cuota, :saldo, :double
  end
end
