#1
arr_hash = [{persona:"juan",pais:"chile",Continente:"america",genero:"M"},
			{persona:"fco",pais:"chile",Continente:"america",genero:"M"},
			{persona:"pedro",pais:"peru",Continente:"America",genero:"M"},
			{persona:"michel",pais:"bolivia",Continente:"america",genero:"M"},
			{persona:"pedro",pais:"colombia",Continente:"america",genero:"M"},
			{persona:"alvaro",pais:"brasil",Continente:"america",genero:"M"},
			{persona:"laura",pais:"ecuador",Continente:"america",genero:"F"},
			{persona:"felipe",pais:"españa",Continente:"europa",genero:"M"}]

#2
puts "La cantidad de personas es: #{arr_hash.length}"

#3
print "Los continentes son: "
puts ""
puts arr_hash.map{|h| h["Continente".to_sym].downcase}.uniq

#4
puts "Lista de personas con nombre Pedro:" 
arr_hash.map do |h| 
	if h["persona".to_sym] == "pedro"		
		print h.values
		puts ""
	end	
end 

#5
m = []
f = []
i = 0
j = 0
arr_hash.each do |h| 
	if h["genero".to_sym] == "M"
		m[i] = h.values
		i += 1
	end
	if h["genero".to_sym] == "F"
		f[j] = h.values
		j += 1
	end
	
end
puts""
puts "Lista de Hombres: #{m}"
puts ""
puts "Lista de Mujeres: #{f}"
puts ""

#6
#así debería quedar: {america:[chile,peru,bolivia], europa:[españa]}
hashes = {}
arr_continentes =  arr_hash.map{|h| h[:Continente].downcase}.uniq
hash_final = {}

arr_continentes.each do |a|
	i = 0
	arr_pais = []

	arr_hash.map do |h|
		if a == h[:Continente].downcase
			#si el paìs NO existe en el array, lo inserta
			if !arr_pais.include?(h[:pais])
				arr_pais[i] = h[:pais]
				i += 1
			end
		end
	end

	hash_final[a] = arr_pais
end
puts hash_final





