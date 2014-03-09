class CreateAsesors < ActiveRecord::Migration
  def change
    create_table :asesors do |t|
      t.string :nombre
      t.string :identidad
      t.integer :moderador_id
      t.float :comision_credito
      t.float :comision_contado_empresa
      t.float :comision_contado_asesor

      t.timestamps
    end
  end
end
