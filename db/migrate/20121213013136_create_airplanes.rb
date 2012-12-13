class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :modelo
      t.integer :capacidade

      t.timestamps
    end
  end
end
