class Bike

	attr_accessor :working 

	def initialize 
		@working = true 
	end 

	def working?
		return @working  
	end 

	def report_broken
		@working = false 
		return nil 
	end 
end 