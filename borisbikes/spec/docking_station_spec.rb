require_relative '../lib/docking_station.rb'

describe Dockingstation do 

  it 'should be able to accept a bike' do
    station = Dockingstation.new
    bike = Bike.new

    expect(station.bike_count).to eq 0
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end

  it 'should be able to release a bike' do
    station = Dockingstation.new
    bike = Bike.new

    station.dock(bike)
    expect(station.bike_count).to eq 1
    station.undock(bike)
    expect(station.bike_count).to eq 0 
    expect(station.rented_bikes_count).to eq 1
    

  end



end