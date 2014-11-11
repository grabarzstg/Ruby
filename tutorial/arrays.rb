# Tablice w Ruby 

# To jest tablica. Tak samo jak szkolna - przechowuje dane.
array = [1, 2, 3, 4, 5] #=> [1, 2, 3, 4, 5]

# Tablice zawieraja rozne typy danych. Na przykład dwa lisy. Takie prawdziwe.
[2, 'lis', true] #=> [2, "lis", true] (int, string, boolean)

# Incepcja...
tab =[ [1,2], [3,4], [5,6] ]

# Tablice maja indeksy. (takie studenckie)
# Numerujemy je od początku (zera)...
array[0] #=> 1
array[10] #=> nil

# i od konca.
array[-1] #=> 5

# Mozna tez podac indeks poczatkowy i dlugosc...
array[3, 2] #=> [4, 5]

# lub zasieg.
array[1..4] #=> [2, 3, 4, 5]

# Chcesz cos dodac? Zaden problem!
array << 6 #=> [1, 2, 3, 4, 5, 6]

# Tablica tak jak wszystko w Ruby jest obiektem.
# Wiec czemu by nie pobawic sie metodami...
array.[] 1 #=> 2
array.[] 100 #=> nil
# i wyswietlic element tablicy w nieco bardziej obiektowy sposob?


# Hasze przechowują dane w postaci węxłów klucz=>wartość 
# Zapisujemy je w klamrach
hash = { 'kolor' => 'rudy', 'liczba' => 4 }

hash.keys #=> ['kolor', 'liczba']

# Zawartości haszy łatwo odczytujemy wg kluczy 
hash['kolor'] #=> 'rudy'
hash['liczba'] #=> 5

# Poszukując nieistniejącego klucza dojdziemy do nikąd
hash['nothing here'] #=> nil

# Od wersji 1.9 możemy używać takiego sposobu tworzenia haszy
new_hash = { defcon: 3, action: true }

new_hash.keys #=> [:defcon, :action]

# Hasze i Tablice dzielą się dużą liczbą metod: np. each, map, count
# oba są również przeliczalne



