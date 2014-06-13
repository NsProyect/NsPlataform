class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastName
      t.string :doc
      t.references :charge, index: true
      t.string :password
      t.string :mail
      t.string :nickName

      t.timestamps
    end
  end
end
