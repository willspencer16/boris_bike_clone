require 'docking_station'
require 'Bike'

describe DockingStation do
	it { is_expected.to respond_to(:release_bike) }

	docking_station = DockingStation.new

	bike_2 = Bike.new

	docking_station.dock(bike_2)

	bike = docking_station.release_bike

	it { expect(bike).to be_a Bike }

	it { expect(bike.working?).to eq true }

	it { is_expected.to respond_to(:dock).with(1).argument }

	it { expect(docking_station.bikes).to eq(bike_2) }

	docking_station_2 = DockingStation.new

	it 'do not want docking station to release bike if there is not one' do
		expect { docking_station_2.release_bike }.to raise_error
	end

	it 'does not want to allow the docking station to dock a bike if there is already a bike' do
		docking_station_2.dock(Bike.new)
		expect {docking_station_2.dock(Bike.new) }.to raise_error("The docking station is full.")
	end

	it 'docking station to have a default capacity of 20 bikes' do
		expect { 20.times do { docking_station_2.dock(Bike.new) } }.to raise_error("The docking station is at max capacity.")
	end
end











