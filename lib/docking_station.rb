require_relative 'Bike'
class DockingStation
	def initialize 
		@bikes = []
	end 

	def release_bike
		fail "There are no bikes" if @bikes.empty?
		@bikes.pop
	end 

	def dock(bike)
		fail "Docking station is full" if @bikes.count >= 20
		@bikes << bike  
	end 
end 