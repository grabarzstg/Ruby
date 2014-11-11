

tablica = []

def haszowanie(tablica, klu)
	indeks =0
	sukces =0
	indeks = klu%103
	
	while sukces < 1   do
		if tablica[indeks] = 0
			puts indeks
			tablica[indeks] = klu
			sukces =1
		else
			indeks++
			if indeks >= 103
				indeks=0
			end
		end
	end
end

for i in 1..100
 tablica << 0
end

puts "Podaj n: "
n=gets.to_i

for i in 1..10
	puts "podaj element nr: " + i.to_s
	
	klucz = gets.to_i
	
	haszowanie tablica, klucz
end

for j in 1..103
	puts tablica[j]
end






