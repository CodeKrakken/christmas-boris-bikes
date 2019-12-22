require './lib/docking_station'
require './lib/bike'
docking_station = DockingStation.new
bike = Bike.new
bike_2 = Bike.new
bike.working?
docking_station.bike
docking_station.release_bike
docking_station.dock(bike)
docking_station.bike
docking_station.dock(bike_2)
docking_station.release_bike
