class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :code
      t.string :address
      t.references :state, index: true
      t.string :room
      t.string :cost
      t.string :amenities

      t.timestamps
    end
    add_attachment :apartments, :image
  end
end
