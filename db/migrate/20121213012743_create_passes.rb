class CreatePasses < ActiveRecord::Migration
  def change
    create_table :passes do |t|
      t.string :assento
      t.float :valor
      t.integer :fly_id
      t.integer :client_id

      t.timestamps
    end
  end
end
