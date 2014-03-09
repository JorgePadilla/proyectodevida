class RemoveProductoIdFromTransito < ActiveRecord::Migration
  def up
    remove_column :transitos, :producto_id
      end

  def down
    add_column :transitos, :producto_id, :integer
  end
end
