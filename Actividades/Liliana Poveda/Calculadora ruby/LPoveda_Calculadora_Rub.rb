#puts ("hello")
#mi_var ="*anitalavalatina"
#puts mi_var.lenght

#mi=gets.chomp
#puts "mi variable es " +mi

#mi=gets.chomp
#puts "mi variable es   #{mi}"
#puts (6/3)
#
#if 10<=5
#	puts"entre"
#else
#	puts "no"
#end
#status = false
#unless status
#	puts "status es falso"
#end
#i=1
#while i<10
#	puts i
#	i=i+1
#end
#i=1
#until i==10
#	puts i
#	i+=1
#end

#for num in 1..10
#	puts num
#end
#arreglo =[1,2,3,4,5]
#puts arreglo
#arreglo.each do |x|
#	puts x*2
#end
#10.times do
 #puts'o'
#end
#t={
#	a:2,
#	b:3,
#	c:'r'

#}

#for (key,value) in t
#	puts" key #{key}: value #{value}"
#end
#t=2

puts("1.resta")
puts("2.suma")
puts("3.multiplica")
puts("4.divide")
puts("5.Salir")
opcion=gets.chomp
def suma
 puts "Ingrese numero"
 num1=gets.chomp;
 puts "Ingrese numero2"
 num2=gets.chomp;
 resultado =Integer(num1)+Integer(num2)
 puts ("El resultado es  #{resultado}")
end

def resta
 puts "Ingrese numero"
 num1=gets.chomp;
 puts "Ingrese numero2"
 num2=gets.chomp;
 resultado =Integer(num1)-Integer(num2)
 puts ("El resultado es  #{resultado}")
end

def multiplica
 puts "Ingrese numero"
 num1=gets.chomp;
 puts "Ingrese numero2"
 num2=gets.chomp;
 resultado =Integer(num1)*Integer(num2)
 puts ("El resultado es  #{resultado}")
end
def dividir
 puts "Ingrese numero"
 num1=gets.chomp;
 puts "Ingrese numero2"
 num2=gets.chomp;
 if num2=='0'
   puts("Division por cero invalida")
 else
 	resultado =Integer(num1)/Integer(num2)
 	puts ("El resultado es  #{resultado}")
end
end

def salir
 puts "Gracias, Adios"
end
case opcion
	when '1'
		resta
	when '2'
		suma
	when '3'
		multiplica
	when '4'
		dividir
	else
		salir
	end

#opcion=gets.chomp
