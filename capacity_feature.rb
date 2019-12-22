require './lib/docking_station'
require './lib/bike'
docking_station = DockingStation.new
20.times { docking_station.dock Bike.new }
