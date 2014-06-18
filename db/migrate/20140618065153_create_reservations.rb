class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :aptocode
      t.string :name
      t.references :doctype, index: true
      t.string :doc
      t.string :mail
      t.date :reservaciondatein
      t.date :reservationdateout

      t.timestamps
    end
  end
end
