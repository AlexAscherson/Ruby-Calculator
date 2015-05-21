require_relative '../lib/bike.rb'

# i dont really understand why there were so many @ in last homework but none in here, 
# or what the option thing was about

#We're describing the functionality of a specific class, Bike.
describe Bike do
  let(:bike) { Bike.new } 
   #this is a specific feature of behavior
   #that we EXPECT to have
 it 'should not be broken when created' do
  # we added the let at the top so dont need to make a bike every time anymore.
    # bike = Bike.new #instantiate a new instance of the Bike class
    expect(bike.broken?).to be false
   #  or 
   #  expect(bike.broken).not_to be true
 end

 it 'should be able to break' do
    # bike = Bike.new
    bike.break
    expect(bike.broken?).to be true
  end

 it 'should be able to be fixed' do
  # bike = Bike.new
  bike.break
  bike.fix
  expect(bike.broken?).to be false
  end



end
