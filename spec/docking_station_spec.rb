require 'docking_station'

describe DockingStation  do 
	
	describe '#release_bike' do 
		it "Raise error when station is empty" do 
			bike = Bike.new 
			expect { subject.release_bike(bike) }.to raise_error("There are no bikes")
	end  

		it "doesn't release a broken bike" do 
			bike = Bike.new 
			bike.report_broken 
			subject.dock(bike)
			expect{subject.release_bike(bike)}.to raise_error("Can't release. Bike faulty.")
		end 

		it 'should take one argument' do
		 expect(subject).to respond_to(:release_bike).with(1).argument
		end 

		it 'releases working bikes' do 
		bike = Bike.new
		subject.dock(bike)
		subject.release_bike(bike)
		expect(bike).to be_working
	end

	end 

	describe '#dock' do 
		it 'Raise error when full' do 
		20.times {subject.dock Bike.new}
		expect { subject.dock Bike.new }.to raise_error("Docking station is full")
	end 
	end 

	it { is_expected.to respond_to :release_bike }
	it { is_expected.to respond_to(:dock).with(1).argument }
	
	it 'has a default capacity' do 
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
		end

	describe '#new' do #We test the new method because we can't test initialize. We pass the number of 
						#docks into the 'new' method when we initialise a new station.
		it 'should take one argument' do
		expect(DockingStation).to respond_to(:new).with(1).argument
	end 
end 

	
end