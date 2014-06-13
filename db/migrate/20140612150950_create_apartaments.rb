class CreateApartaments < ActiveRecord::Migration
  def change
    create_table :apartaments do |t|
      t.string :adress
      t.references :states, index: true
      t.string :room
      t.integer :cost
      t.text :amenities

      t.timestamps
    end
  end
end
