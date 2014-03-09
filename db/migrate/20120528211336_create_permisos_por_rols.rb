class CreatePermisosPorRols < ActiveRecord::Migration
  def change
    create_table :permisos_por_rols do |t|
      t.integer :rol_id
      t.integer :permiso_id

      t.timestamps
    end
  end
end
