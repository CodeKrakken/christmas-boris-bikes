require './lib/docking_station'
require './lib/bike'
require './lib/van'
require './lib/garage'

bike = Bike.new
van = Van.new
docking_station = DockingStation.new
garage = Garage.new

van.collect(bike, docking_station)
docking_station.dock(bike)
van.collect(bike, docking_station)
bike.broken
van.collect(bike, docking_station)
van.deliver(bike, garage)
van.deliver(bike, garage)
van.collect(bike, garage)
garage.repair(bike)
van.collect(bike, garage)
van.deliver(bike, docking_station)
docking_station.bikes