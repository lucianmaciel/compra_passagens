class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nome
      t.string :rg
      t.string :endereco
      t.string :cidade
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
