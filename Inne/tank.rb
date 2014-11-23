class Tank

  def initialize(name, ammo = 0)
    @name = name
    @ammo = ammo
  end

  def name=(name)
    @name = name
  end
  
  def ammo=(ammo)
    @ammo = ammo
  end
  
  def name
    @name
  end
  
  def ammo
    @ammo
  end
  
  def shoot()
    puts name+' robi pew ☺'
	@ammo=@ammo-1
	puts ammo
	
	for j in 1..20
	sleep(1)
		print "."
	end
	puts " "
  end
end


Rudy = Tank.new('T-34', 55)

Tygrys = Tank.new('Panzer VI', 40)

Tygrys.shoot
Rudy.shoot

