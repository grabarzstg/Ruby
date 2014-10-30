def parent (i)
return i/2
end

def left (i)
if i==0
return 1
	else
	return 2*i
end
end



def right (i)
if i==0
return 2
	else
	return 2*i+1
end
end

def heapify (t, i, n)

l = left i
r = right i
if l < n && t[l] > t[i]
largest = l
	else
	largest = i	
end

if r<n && t[r] > t[largest]
largest =r;
end

if largest != i
x=t[i]
t[i]=t[largest]
t[largest]=x
heapify t, largest, n
end
end


def build_heap (t)
for i in 5..0
heapify(t,i,10)
end
end

def heapsort (t)
build_heap t
n =10
for i in 9..1
x = t[0]
t[0]=t[i]
t[i]=x
--n
heapify(t,0,n)
end
end
t = [0,0,0,0,0,0,0,0,0,0,0] 
srand(Random.new_seed)
i =0
for i in 0..9
t[i]=rand()
end

for i in 0..9
puts t[i]
end
heapsort t
puts "______________________"
for i in 0..9
puts t[i]
end

