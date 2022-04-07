# puts "Is it raining today?"
# raining = gets.chomp
# if raining == "yes"
#   puts "raining"
# else 
#   puts "not raining"
# end
# puts "What's the temperature today?"
# temperature = gets.chomp
# temperature = temperature.to_i
# if temperature < 15 && raining == "yes"
#        puts "It's wet and cold"
# elsif temperature < 15 && raining == "no"
#        puts "It's not raining but cold"
# elsif temperature >= 15 && raining == "no"
#        puts "It's warm but not rainning"
# else
#   puts "It's warm and raining"
# end

def raining_weather
  puts "Is it raining today?"
  raining = gets.chomp

  if raining == "yes"
    puts "raining"
  else 
    puts "not raining"
  end

  return raining
end

def temperature_weather
  puts "What's the temperature today?"
  temperature = gets.chomp
  temperature = temperature.to_i
  is_raining = raining_weather()

  if temperature < 15 && is_raining == "yes"
         puts "It's wet and cold"
  elsif temperature < 15 && is_raining == "no"
         puts "It's not raining but cold"
  elsif temperature >= 15 && is_raining == "no"
         puts "It's warm but not rainning"
  else
      puts "It's warm and raining"
  end

  return temperature
end  

raining_weather()
temperature_weather()
