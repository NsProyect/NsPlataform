# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


doctypes = [{name: "Cedula de Ciudadania" , abbrev:"C.C"},
			{name: "Cedula de Extrangeria" , abbrev:"C.E"},
			{name: "Pasaporte" , abbrev:"Pas"}]
doctypes.each do |doctype|
	Doctype.where(doctype).first_or_create
	
end	


states = [{name: "Disponible"},
		  {name: "En Reserva"},
		  {name: "Ocupado"},
		  {name: "En Mantenimiento"}]
states.each do |state|
	State.where(state).first_or_create	
end	

homas_admin = {email:"admin@homas.com", password: "homas", password_confirmation: "homas", admin: true, user: false, name: "Admin", lastname:"Homas", doc:"123456789"}
        
User.where(email: homas_admin[:email]).first || User.create!(homas_admin)
	
