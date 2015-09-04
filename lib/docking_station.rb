require_relative 'Bike'
class DockingStation
	DEFAULT_CAPACITY = 20
	attr_reader :capacity 
	attr_accessor :working 

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end 

	def release_bike
		fail "Can't release. Bike faulty." if working == false 
		fail "There are no bikes" if empty?
		@bikes.pop
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