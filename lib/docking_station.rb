require './lib/bike'
# require_relative 'bike.rb'

class DockingStation
	attr_reader :bikes

	def initialize
		@bikes = nil
	end

	def release_bike
		if @bikes == nil
			fail
		else
			Bike.new
		end
	end

	def dock(bike)
		if @bikes != nil
			fail("The docking station is full.")
		else
			@bikes = bike
		end
	end
end
