class CreateSitios < ActiveRecord::Migration
  def change
    create_table :sitios do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  
  end
end
