class CreateNotaEntregas < ActiveRecord::Migration
  def change
    create_table :nota_entregas do |t|
      t.date :fecha
      t.string :numero
      t.integer :transito_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
