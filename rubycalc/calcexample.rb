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

options = chooseoperation

while options != 'q'
  case chooseoperation
  when 'b'
    basiccalc
  when 'a'
    advancedcalc
  when 'm'
    mortgage_calc
  when 'i'
    bmi_calc
  when 't'
    trip_calc
  end

  options = chooseoperation
end