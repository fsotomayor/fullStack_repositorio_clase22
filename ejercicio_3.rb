inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

opcion = 0

while opcion != 5
	suma = 0
	mayor = 0
	mayor_item = ""

	puts "-----------------------------
	Menú
		1: Para ingresar Item y Stock. Ejemplo: Pendrive,2
		2: Para visualizar stock total (suma)
		3: Para ver Item con mayor cantidad de Stock
		4: Consultar por un Item en particular
		5: Salir
		-------------------------------"

	opcion = gets.chomp.to_i

	if opcion == 1
		puts "Ingrese Item y Stock:"
		item = gets.chomp
		item2 = item.split(",")
		inventario[item2[0].to_sym] = item2[1].to_i
		print inventario
	end

	if opcion == 2
		inventario.each do |k,v|
			suma += v
		end
		puts "El Stock total es: #{suma}"
		puts ""
	end

	if opcion == 3
		inventario.each do |k,v|
			if v > mayor
				mayor = v
				mayor_item = k
			end
		end
		puts "El item con mayor Stock es: #{mayor_item}"
	end

	if opcion == 4
		puts "ingrese Item a buscar:"
		buscar = gets.chomp.to_sym
		inventario.each do |k,v|
			if buscar == k
				puts "SI"
				exit
			end			
		end
		puts "Item NO existe"
	end

end







