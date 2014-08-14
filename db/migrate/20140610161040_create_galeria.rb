class CreateGaleria < ActiveRecord::Migration
  def change
    create_table :galeria do |t|
      t.string :index

      t.timestamps
    end
  end
end
