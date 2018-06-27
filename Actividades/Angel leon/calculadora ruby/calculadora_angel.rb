def sumar(param_1,param_2)
	puts "Resultado suma:"+param_1+param_2
end

def restar(param_1,param_2)
	puts  "Resultado resta:"+param_1-param_2
end


def multiplicar(param_1,param_2)
	puts  "Resultado multiplicación:"+param_1*param_2
end

def dividir(param_1,param_2)
	puts  "Resultado divisón:"+param_1/param_2
end

def pasar_entero(n)
	begin 
		Integer(n)
	rescue
		0
	end
end

opciones = {
	Sumar: 1,
	Restar: 2,
	Multiplicar: 3,
	Dividir: 4 
}

for (clave,valor) in opciones
	puts "Que desea hacer:"
	puts "#{clave} -> #{valor}"
end 
opcion = gets.chomp



opcion = pasar_entero(opcion)
case opcion
when 1
	print "Escriba el primer número "
	param_1 = gets.chomp
	param_1 = pasar_entero(param_1)
	print "Escriba el segúndo número "
	param_2 = gets.chomp
	param_2 = pasar_entero(param_2)
	sumar(param_1,param_2)
when 2
	print "Escriba el primer número "
	param_1 = gets.chomp
	param_1 = pasar_entero(param_1)
	print "Escriba el segúndo número "
	param_2 = gets.chomp
	param_2 = pasar_entero(param_2)
	multiplicar(param_1,param_2)
when 3
	print "Escriba el primer número "
	param_1 = gets.chomp
	param_1 = pasar_entero(param_1)
	print "Escriba el segúndo número "
	param_2 = gets.chomp
	param_2 = pasar_entero(param_2)
	restar(param_1,param_2)
when 4
	print "Escriba el primer número "
	param_1 = gets.chomp
	param_1 = pasar_entero(param_1)
	print "Escriba el segúndo número "
	param_2 = gets.chomp
	param_2 = pasar_entero(param_2)
	dividir(param_1,param_2)
else
	puts "Valor invalido";
end