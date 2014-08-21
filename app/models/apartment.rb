class Apartment < ActiveRecord::Base
  belongs_to :state
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  	                :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :code, :presence => true
  validates :address, :presence => true
  validates :state, :presence => true
  validates :room, :presence => true
  validates :amenities, :presence => true

  validates :code, uniqueness: { message: "El Codigo debe ser Unico" } 
  validates :address, uniqueness: { message: "La Dirección debe ser Unica" } 
end
