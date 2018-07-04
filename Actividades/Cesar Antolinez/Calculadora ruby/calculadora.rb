#loop
#numero_1 = gets.chomp

#break if <numero_1.is_a? Numeric>
#puts Integer(numero_1).is_a? Numeric
#end
puts 'Ingrese el primer número'
numero_1 = gets.chomp
puts 'Ingrese el número de la operación'
puts '1. suma'
puts '2. resta'
puts '3. multiplicación'
puts '4. Divición'
puts '5. exponenciar'
puts '6. modulo'
puts '7. salir'
operacion = gets.chomp
puts 'Ingrese el segundo número'
numero_2 = gets.chomp

case Integer(operacion)
when 1
 	puts "Su respuesta es #{numero_1.to_f + numero_2.to_f}"
when 2
 	puts "Su respuesta es #{numero_1.to_f - numero_2.to_f}"
when 3
 	puts "Su respuesta es #{numero_1.to_f * numero_2.to_f}"
when 4
	if Integer(numero_2) != 0
 	puts "Su respuesta es #{numero_1.to_f / numero_2.to_f}"
 	else
 		puts "Ingreso 0 en el dividiendo"
 	end
when 5
 	puts "Su respuesta es #{numero_1.to_f ** numero_2.to_f}"
when 6
 	if Integer(numero_2) != 0
 	puts "Su respuesta es #{numero_1.to_f % numero_2.to_f}"
 	else
 		puts "Ingreso 0 en el dividiendo"
 	end
else
	puts 'Salio de la calculadora gracias'
end