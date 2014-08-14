class CreateIpqrs < ActiveRecord::Migration
  def change
    create_table :ipqrs do |t|
      t.string :name
      t.string :mail
      t.text :comments

      t.timestamps
    end
  end
end
