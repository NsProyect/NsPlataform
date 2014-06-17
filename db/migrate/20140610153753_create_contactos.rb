class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :index

      t.timestamps
    end
  end
end
