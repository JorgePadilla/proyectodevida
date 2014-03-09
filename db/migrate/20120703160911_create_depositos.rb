class CreateDepositos < ActiveRecord::Migration
  def change
    create_table :depositos do |t|
      t.string :numero
      t.date :fecha

      t.timestamps
    end
  end
end
