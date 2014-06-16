class Apartament < ActiveRecord::Base
	belongs_to :state
	def self.search(search, page) 
		where(['upper(room) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 6).order("room") 
	end
end
