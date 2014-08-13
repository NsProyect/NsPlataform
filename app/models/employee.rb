class Employee < ActiveRecord::Base
	belongs_to :charge
	def self.search(search, page) 
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 6).order("name") 
	end
end
