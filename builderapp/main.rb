require 'pry'
require_relative 'buildingap.rb'
require_relative 'apartments.rb'
require_relative 'tenant.rb'

building_one = Building.new floors: 5, address: '1 The Avenue, London', num_of_apartments: 15, age: 100, concierge: true

def populate
  a1 = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 2700, bedrooms: 4, bathrooms:2
  a2 = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 2700, bedrooms: 4, bathrooms:2
  a3 = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 2700, bedrooms: 4, bathrooms:2
  tenant1 = Tenant.new name: 'Doug', age:52, sex: 'male'
  tenant3 = Tenant.new name: 'Tina', age:67, sex: 'female'
  tenant2 = Tenant.new name: 'Elvis', age:152, sex: 'male'
  tenant4 = Tenant.new name: 'Mr Goebbelez', age:43, sex: 'male'
  [a1, a2, a3].each {|appt| building_one.apartments << appt }
  a1.tenants << tenant1
  tenant1.apartment = a1
  a2.tenants << tenant2 << tenant3
end

populate


def menu
  puts `clear`
  puts "Welcome to Slumlord Manager 0.0.1"
  print "(c)reate new flat, (a)dd new tenant, (m)ove unassinged tenant to flat, or (q)uit: "
  gets.chomp.downcase
end






# [tenant1, tenant2, tenant3, tenant4].each {|tenant| building_one.apartments.first.tenants << tenant }

def newtenant
    # building = @building_one 
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i
    print "Sex: "
    gender = gets.chomp
    print "Which apartment does #{name} live in?\n"
    apt = gets.chomp
    binding.pry
    @Building.apartments[apt].tenants << Tenant.new(name, age, gender)
  end

def movetenant
  tenanttomove = gets.chomp.to_s
  apptomovein = gets.chomp.to_s

  apptomovein.tenants << tenanttomove
end



response = menu

while response != 'q'
  case response
  when 'c'
    newbuilding
  when 'a'
    newtenant
  when 'm'
    movetenant
  end
end








binding.pry
nil
# you need some code after the binding because it stops on the next line