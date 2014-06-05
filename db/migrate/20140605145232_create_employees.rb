class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastName
      t.string :document
      t.string :charge
      t.string :password
      t.string :email
      t.string :nickName

      t.timestamps
    end
  end
end
