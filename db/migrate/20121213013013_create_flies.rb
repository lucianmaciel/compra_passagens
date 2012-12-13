class CreateFlies < ActiveRecord::Migration
  def change
    create_table :flies do |t|
      t.integer :codigo
      t.date :data
      t.time :hora_voo
      t.time :hora_chegada
      t.string :origem
      t.string :destino
      t.integer :pilot_id
      t.integer :airplane_id

      t.timestamps
    end
  end
end
