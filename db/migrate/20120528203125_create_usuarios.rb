class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :password_hash
      t.string :password_salt
      t.integer :rol_id

      t.timestamps
    end
    add_index :usuarios, :rol_id
  end
end
