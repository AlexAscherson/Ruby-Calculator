require 'pry'
require_relative 'buildingap.rb'
require_relative 'apartments.rb'
require_relative 'tenant.rb'

@building = nil

unless @building
    print "Add (b)uilding or (q)uit: "
else
    print "Add (p)erson or (a)partment or (b)uilding or (q)uit: "
end

response = gets.chomp.downcase
while response != 'q'
  if response == 'p'
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i
    print "Gender "
    sex = gets.chomp 
    print "Which apartment does #{name} live in?\n"
    # @building.apartments.each_key do |number|
    #   puts number
    # end
    apt = gets.chomp.to_i
    @building.apartments[apt].tenants << Tenant.new(name, age, sex, apt)
  elsif response == 'a'
    print "Number: "
    number = gets.chomp.to_i
    print "Price: "
    price = gets.chomp.to_i
    print "Occupied?:no "
    occupied = false
    print "Balcony? True false?: "
    balcony = gets.chomp
    print "Sqft: "
    sqft = gets.chomp.to_i
    print "Bedrooms: "
    bedrooms = gets.chomp.to_i
    print "Bathrooms: "
    bathrooms = gets.chomp.to_i
    tenants = nil

    @building.apartments[number] = Apartment.new(number, price, occupied, balcony, sqft, bedrooms, bathrooms, tenants)
  elsif response == 'b'
    @building = Building.new('5', '1 Kensington Gardens', 10, nil)
    print "Your building is #{@building.address} \n"
  end
  
  unless @building
    print "Add (b)uilding or (q)uit: "
  else
    print "Add (p)erson or (a)partment or (q)uit: "
    # add another building
  end

  response = gets.chomp.downcase
end








binding.pry
nil
# you need some code after the binding because it stops on the next line