#Intercalary year formula
# year 

puts "Enter a year: "
year = gets.chomp.to_i

if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  puts "#{year} is an intercalary year."
else
  puts "#{year} is not a intercalary year."
end

century = (year / 100.0).ceil
puts "#{year} belongs to the #{century} century."
