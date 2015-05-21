require_relative '../lib/docking_station.rb'

describe Dockingstation do 

  let(:bike) { Bike.new }
  let(:station) { Dockingstation.new(:capacity => 20) }

  def fill_station(station)
    20.times { station.dock(Bike.new) }
  end


  it 'should be able to accept a bike' do
    station = Dockingstation.new
    bike = Bike.new

    expect(station.bike_count).to eq 0
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end

  # it 'should be able to release a bike' do
  #   station = Dockingstation.new
  #   bike = Bike.new

  #   station.dock(bike)
  #   expect(station.bike_count).to eq 1
  #   station.undock(bike)
  #   expect(station.bike_count).to eq 0 
  #   expect(station.rented_bikes_count).to eq    

  # end

  it "should release a bike" do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq 0
  end

  it "should know when it's full" do
   expect(station.full?).not_to be true
   20.times { station.dock(Bike.new) }
   expect(station.full?).to be true
  end

  it "should not accept a bike if it's full" do
   fill_station station
   expect { station.dock(bike) }.to raise_error RuntimeError
  end

  # it 'should be able to count broken bikes' do
  #   station = Dockingstation.new
  #   bike = Bike.new

end