restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2, "Dal Makhani2" => 8 }

#7
restaurant_menu.each do |k,v|
	arr = [] 
	arr = k.split(" ")
	desc = 0
	total = 0
	if arr.length > 1
		desc = v*0.2
		total = v-desc
		puts "El plato #{k} tiene descuento. El total es: #{total}"
	end
end