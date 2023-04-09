puts "Enter the radius: "

r = gets.chomp.to_i

puts "Enter the square: "

s = gets.chomp.to_i

puts "Enter the passage distance: "

k = gets.chomp.to_i

diagonal = Math.sqrt(2) * s

diameter = 2 * r + 2  * k

if diameter < diagonal
    puts "The stage fit"
else 
    puts "The stage does not fit"
end