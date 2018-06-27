
for num in 1..10
	print "Tabla del #{num}" 
	puts "-"*100
	for num_dos in 1..10
		puts "#{num}| * | #{num_dos} es| #{num*num_dos }"
	end
end	

t = {
	nombre: "Pepe",
	apellido: "Juarez"
}


for (clave,valor) in t 
	puts "clave #{clave}: valor #{valor}"
end