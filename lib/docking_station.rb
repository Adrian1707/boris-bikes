require_relative 'Bike'
class DockingStation
	DEFAULT_CAPACITY = 20
	attr_accessor :capacity 

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end 

	def release_bike(bike)
		fail "There are no bikes" if empty?
		fail "Can't release. Bike faulty." if bike.working? == false 
		@bikes.delete(bike)
	end 

	def dock(bike)
		fail "Docking station is full" if full?
		@bikes << bike  
	end 

	private

	attr_reader :bikes 

	def full?
	@bikes.count >= capacity 
	end 

	def empty?
    @bikes.empty?
	end 

end 