require './lib/docking_station'
require './lib/bike'
require './lib/van'
docking_station = DockingStation.new
bike = Bike.new
bike_2 = Bike.new
van = Van.new
repair_shop = RepairShop.new
bike.dock(docking_station)
bike_2.dock(docking_station)
bike.broken
van.collect_bikes(docking_station)
van.bikes
docking_station.bikes
van.deliver_bikes(repair_shop)
van.bikes
repair_shop.bikes
repair_shop.repair_bikes
bike.working?
van.collect_bikes(repair_shop)
van.deliver_bikes(docking_station)