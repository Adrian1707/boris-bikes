require 'Bike'
describe Bike do 
	
	it {is_expected.to respond_to :working?}
	
	it 'can be reported broken' do 
		expect(subject). to respond_to :report_broken
	end

	it 'bike becomes not working when report_broken is called' do 
		bike = Bike.new #create a bike first then run the method on that bike
		bike.report_broken #this now calls the method on the new bike 
		expect(bike.working?).to eql(false)
	end 

end