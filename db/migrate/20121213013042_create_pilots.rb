class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
