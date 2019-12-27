require './lib/docking_station'
require './lib/bike'

docking_station = DockingStation.new

(docking_station.capacity+1).times { docking_station.dock Bike.new }

docking_station_2 = DockingStation.new(1000)