class Ipqr < ActiveRecord::Base
	validates :mail, :presence => true
	validates :name, :presence => true
	validates :comments, :presence => true
end
