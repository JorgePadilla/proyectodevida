class CreateCoordinadors < ActiveRecord::Migration
  def change
    create_table :coordinadors do |t|
      t.string :nombre
      t.integer :director_comercial_id
      t.float :comision_credito

      t.timestamps
    end
  end
end
