require './lib/bike'
require './lib/garage'
bike = Bike.new
garage = Garage.new
bike.broken
bike
garage.repair(bike)
bike