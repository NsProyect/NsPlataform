class Reservation < ActiveRecord::Base
	belongs_to :apartment
	belongs_to :doctype
end
