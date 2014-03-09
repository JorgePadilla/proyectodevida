class CreateGerenteComercials < ActiveRecord::Migration
  def change
    create_table :gerente_comercials do |t|
      t.string :nombre
      t.float :comision_credito

      t.timestamps
    end
  end
end
