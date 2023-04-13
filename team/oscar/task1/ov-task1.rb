print "Enter a number: "
# Read input from the user
input = gets.chomp

# Convert input to integer
num = input.to_i

# Determine if the number is positive, negative, or zero
if num > 0
  value = "positive"
elsif num < 0
  value = "negative"
else
  value = "It's zero"
end

# Count the number of digits in the absolute value of the number
  count = num.abs.to_s.length

# Display the result
puts "#{value} #{count}-digit"
