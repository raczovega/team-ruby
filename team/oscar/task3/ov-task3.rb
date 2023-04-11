# Ask for the year
print "Enter a year: "
year = gets.chomp.to_i

# Check if the year is divisible by 4
if year % 4 == 0
  # Check if the year is divisible by 100
  if year % 100 == 0
    # Check if the year is divisible by 400
    if year % 400 == 0
      puts "#{year} is a leap year"
    else
      puts "#{year} is not a leap year"
    end
  else
    puts "#{year} is a leap year"
  end
else
  puts "#{year} is not a leap year"
end

century = (year / 100) + 1
puts "#{year} belongs to the #{century} century"