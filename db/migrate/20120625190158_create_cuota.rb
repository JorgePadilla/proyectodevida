class CreateCuota < ActiveRecord::Migration
  def change
    create_table :cuota do |t|
      t.string :estado
      t.string :liquidacion

      t.timestamps
    end
  end
end
