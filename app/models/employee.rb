class Employee < ActiveRecord::Base
	belongs_to :charge
	def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 2).order("name")
	end
	


	# Validar que los atributos sean obligatorios
validates :doc, :presence => true
validates :name, :presence => true
validates :password, :presence => true
validates :mail, :presence => true
# validar que un atributos unicos
validates :doc, uniqueness: { message: "No se puede Repetir" }
validates :mail, uniqueness: { message: "No se puede Repetir" }




end
