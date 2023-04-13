puts "Enter the Radius of the stage:"
r=gets.chomp.to_i
puts "Enter the side length of the square hall:"
s=gets.chomp.to_i
puts  "Enter the passage length"
k=gets.chomp.to_i

d=2*r
k2=s-d

if (k2<=0) || (k>k2)
    puts "Sizes specified does not fit"
else
    puts "Sizes specified fits correctly"
end
    