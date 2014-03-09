class CreateTransitos < ActiveRecord::Migration
  def change
    create_table :transitos do |t|
      t.integer :producto_id
      t.integer :asesor_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
