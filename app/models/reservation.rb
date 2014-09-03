class Reservation < ActiveRecord::Base
  belongs_to :doctype
  belongs_to :apartment

  # Validar que los atributos sean obligatorios
	validates :name, :presence => true
	validates :doctype_id, :presence => true
	validates :doc, :presence => true
	validates :mail, :presence => true
	validates :reservaciondatein, :presence => true
	validates :reservationdateout, :presence => true
	# valida la longitud de un campo, tanto la longitud minima como la maxima
	validates :doc, length: { minimum: 5, maximum: 30 }
	# Valida si un atributo es numerico
	validates :doc, numericality: true
end
