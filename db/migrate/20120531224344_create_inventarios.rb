class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.integer :producto_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
