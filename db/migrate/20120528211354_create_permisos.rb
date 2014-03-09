class CreatePermisos < ActiveRecord::Migration
  def change
    create_table :permisos do |t|
      t.string :acesso
      t.string :tipo_acesso

      t.timestamps
    end
  end
end
