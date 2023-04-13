# Ask for the year
print "Enter a year: "
year = gets.chomp.to_i

# Check if the year is divisible by 4
if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  puts "#{year} is a leap year"
else
  puts "#{year} is not a leap year"
end

#Calculate century by checking the residue of the given year

=begin
if year % 100 == 0
  century = year / 100
else
  century = (year / 100) + 1 
end
=end
century = (year / 100) + (year % 100 == 0 ? 0 : 1)

#Print output
puts "#{year} belongs to the #{century} century"