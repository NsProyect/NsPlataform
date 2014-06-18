class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :aptcode
      t.string :name
      t.references :doctype, index: true
      t.string :doc
      t.date :reservationDate
      t.string :mail

      t.timestamps
    end
  end
end
