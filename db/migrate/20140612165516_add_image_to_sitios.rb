class AddImageToSitios < ActiveRecord::Migration
  def self.up
   add_attachment :sitios, :image
 end

 def self.down
   remove_attachment :sitios, :image
 end
end
