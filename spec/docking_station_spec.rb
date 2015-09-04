require 'docking_station'

describe DockingStation  do 
	
	describe '#release_bike' do 
		it "Raise error when station is empty" do 
		expect { subject.release_bike }.to raise_error("There are no bikes")
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
	it 'releases working bikes' do 
		subject.dock Bike.new 
		bike = subject.release_bike
		expect(bike).to be_working
	end
	it 'has a default capacity' do 
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
		end
	
	
end