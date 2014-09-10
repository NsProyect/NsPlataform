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
	Doctype.create(doctype) unless Doctype.exists? (doctype)
	
end	


states = [{name: "Disponible"},
		  {name: "En Reserva"},
		  {name: "Ocupado"},
		  {name: "En Mantenimiento"}]
states.each do |state|
	State.create(state) unless State.exists? (state)
	
end	

users = [
  {email:"hola@user.com", crypted_password:7410, salt:7410, admin:1, user:0,  name: "hola", lastname:"hola", doc:123456789}
        ]
users.each do |user|
  User.create(user) unless User.exists? (user)
	
end	