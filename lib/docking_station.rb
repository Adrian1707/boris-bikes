require_relative 'Bike'
class DockingStation
	DEFAULT_CAPACITY = 20

	def initialize 
		@bikes = []
	end 

	def release_bike
		fail "There are no bikes" if empty?
		@bikes.pop
	end 

	def dock(bike)
		fail "Docking station is full" if full?
		@bikes << bike  
	end 

	private

	def full?
	@bikes.count >= DEFAULT_CAPACITY
	end 

	def empty?
    @bikes.empty?
	end 

end 