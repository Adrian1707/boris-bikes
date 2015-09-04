require_relative 'Bike'
class DockingStation
	def initialize 
		@bikes = []
	end 

	def release_bike
		fail "There are no bikes" if @empty?
		@bikes.pop
	end 

	def dock(bike)
		fail "Docking station is full" if full?
		@bikes << bike  
	end 

	def empty?
    if @bikes.empty?
	end 

	def full?
	if @bikes.count >= 20
	end 
end 