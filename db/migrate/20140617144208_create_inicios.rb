class CreateInicios < ActiveRecord::Migration
  def change
    create_table :inicios do |t|
      t.string :direccion
      t.string :barrio
      t.string :habitacion
      t.string :baño
      t.string :cocina
      t.string :sala
      t.string :comedor
      t.text :descripcion
      t.string :precio
      t.references :Estado, index: true
      t.boolean :amoblado

      t.timestamps
    end
  end
end
