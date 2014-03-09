class AddInventarioIdToTransito < ActiveRecord::Migration
  def change
    add_column :transitos, :inventario_id, :integer
  end
end
