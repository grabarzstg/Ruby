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

(1..100).each do 
 tablica << 0
end

puts "Podaj n: "
n=gets.to_i

(1..n).each do |i|
	puts "podaj element nr: " + i.to_s
	
	klucz = gets.to_i
	
	haszowanie tablica, klucz
end

puts 'OUTPUT:'
(1..103).each do |j|
	puts tablica[j]
end







