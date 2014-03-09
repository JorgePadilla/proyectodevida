class AddMissingToCuotum < ActiveRecord::Migration
  def change
    add_column :cuota, :num_deposito, :string
    add_column :cuota, :usuario_id, :int
    add_column :cuota, :revisado, :boolean
    add_column :cuota, :observaciones, :text
    add_column :cuota, :num_liquidacion, :int
  end
end
