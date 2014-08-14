class AddDireccionToSitios < ActiveRecord::Migration
  def change
    add_column :sitios, :direccion, :string
  end
end
