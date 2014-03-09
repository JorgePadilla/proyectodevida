class AddValorUnitarioDolaresToEntradaInventario < ActiveRecord::Migration
  def change
    add_column :entrada_inventarios, :valor_unitario_dolares, :float
  end
end
