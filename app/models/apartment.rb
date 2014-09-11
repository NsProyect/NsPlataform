class Apartment < ActiveRecord::Base
  has_many :reservations
  belongs_to :state
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "200x200>" }, 
  	                :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :address, :presence => true
  validates :state, :presence => true
  validates :room, :presence => true
  validates :amenities, :presence => true
  validates :address, uniqueness: { message: "La Dirección debe ser Unica" } 

  
  
end
