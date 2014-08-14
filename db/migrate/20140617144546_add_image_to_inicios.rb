class AddImageToInicios < ActiveRecord::Migration
  def change
    add_column :inicios, :image, :paperclip
  end
end
