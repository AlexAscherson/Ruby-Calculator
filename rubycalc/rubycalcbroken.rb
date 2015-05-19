
# basic

  puts 'Please select calculator type - A or B,'
  calctype = gets.chomp

  # puts 'Please select first number'
  # num1 = gets.chomp.to_f
  # puts 'Please select second number'
  # num2 = gets.chomp.to_f

def getfloat()
  gets.chomp.to_f
  puts "select a number"

end

def getstring()
  gets.chomp
  puts 'Please select operation - + or - or / or *'

end


def basiccalc()
  num1 = getfloat()
  puts 'Please select first number'
  num2 = getfloat()
  puts 'Please select second number'
  operator = getstring()
  puts 'Please select operator'

  case operator
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  when '/'
    num1 / num2
  when '*'
    num1 * num2
  else
    puts 'Error in operator'
  end
end

def advcalc()

  num1 = getfloat()
  puts 'Please select first number'
  num2 = getfloat()
  puts 'Please select second number'
  operator = getstring()
  puts 'Please select operator'

  case operator
  when 'sqroot'
    Math.sqrt(num1) 
  when 'powerof'
    num1**num2
  else
    puts 'Operator not recognised'
  end
end


if calctype =='b'
  # operator = getstring()
  # puts "Your calculation is #{num1} #{operator} #{num2}"
  puts basiccalc()
else
  puts 'Please select operation - sqroot or powerof'
  # operator = getstring()
  puts "Your calculation is #{num1} #{operator} #{num2}"
  puts advcalc(num1, num2, operator)

end




