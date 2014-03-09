class CreateDirectorComercials < ActiveRecord::Migration
  def change
    create_table :director_comercials do |t|
      t.string :nombre
      t.integer :gerente_comercial_id
      t.float :comision_credito

      t.timestamps
    end
  end
end
