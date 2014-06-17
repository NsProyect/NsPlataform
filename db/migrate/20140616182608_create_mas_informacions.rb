class CreateMasInformacions < ActiveRecord::Migration
  def change
    create_table :mas_informacions do |t|

      t.timestamps
    end
  end
end
