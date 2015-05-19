def chooseoperation
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, (m)ortgage, bm(i), (t)rip or (q)uit: "
  gets.chomp.downcase
end

def basiccalc
  print "Please select operator"
  operator = gets.chomp.downcase
  print "Please select first number "
  num1 = gets.to_f
  print "Please select second number: "
  num2 = gets.to_f

  case operator
  when '+'
    puts "#{num1 + num2}"
  when '-'
    puts "#{num1 - num2}"
  when '*'
    puts "#{num1 * num2}"
  when '/'
    puts "#{num1 / num2}"
  end

  gets
end

def advancedcalc
  print "sq or powerof "
  operator = gets.chomp.downcase
  print "first number: "
  num1 = gets.to_f

  if operation == 's'
    puts "#{Math.sqrt(num1)}"
  else
    print "second number: "
    num2 = gets.to_f
    puts "#{num1**num2}"
  end

  gets
end

def mortgagecalc
  puts "Loan (Â£)"
  loan = gets.to_f
  puts "APR"
  apr = gets.to_f / 100 / 12
  puts "Term"
  term = gets.to_f

  temp = ((1 + apr) **term)
  payment = (loan * apr * temp) / (temp - 1)

  puts payment
  gets
end

def bmicalc
  puts "enter mass"
  mass = gets.to_f
  puts "enter height"
  height = gets.to_f

  # console.log(mass, height, mass / **(height, 2))
  
  bmi = (mass / height)/height

  puts bmi
  gets
end


options = chooseoperation

while options != 'q'
  case chooseoperation
  when 'b'
    basiccalc
  when 'a'
    advancedcalc
  when 'm'
    mortgagecalc
  when 'i'
    bmicalc
  when 't'
    trip_calc
  end

  options = chooseoperation
end