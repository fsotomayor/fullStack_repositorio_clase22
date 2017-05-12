personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]


i = 0
per_hash = {}
while i < personas.length
	per_hash[personas[i]] = edad[i]
	i += 1
end

#método que retorna las edades
def edad(hashes)
	return hashes.values
end

print edad(per_hash)