class AddNombreToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :image, :paperclip
  end
end
