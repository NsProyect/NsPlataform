class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :nombre
      t.string :email
      t.date :fecha_ingreso
      t.date :fecha_salida
      t.string :apartamento
      t.string :hostal

      t.timestamps
    end
  end
end
