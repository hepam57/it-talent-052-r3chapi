# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = Administrador.create(nombre:"r3chappi", correo:"r3chappi@chappi.com", password:"123456")
a.etiquetas.create(nombre:"Desarrollo sostenible")
a.etiquetas.create(nombre:"Reciclaje")
a.etiquetas.create(nombre:"Economia circular")
e = Etiqueta.first
u = Usuario.create(nombre:"Usuario", correo:"Usuario@gmail.com", password:"123456")
u.etiquetas.push(e)

u = Editor.create(nombre:"Editor1", correo:"Editor1@chappi.com", password:"123456")