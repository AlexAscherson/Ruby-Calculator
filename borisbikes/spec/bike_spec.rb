require_relative '../lib/bike.rb'

#We're describing the functionality of a specific class, Bike.
describe Bike do
 #this is a specific feature of behavior
 #that we EXPECT to have
 it 'should not be broken when created' do
  bike = Bike.new #instantiate a new instance of the Bike class
  expect(bike.broken?).to be false
 #  or 
 #  expect(bike.broken).not_to be true
 end



end
