class CreateModeradors < ActiveRecord::Migration
  def change
    create_table :moderadors do |t|
      t.string :nombre
      t.integer :coordinador_id
      t.float :comision_credito

      t.timestamps
    end
  end
end
