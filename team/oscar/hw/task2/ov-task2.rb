# Get user input
print "Enter the radius of the stage: "
radius = gets.chomp.to_f
print "Enter the size of the square hall: "
hall_size = gets.chomp.to_f
print "Enter the passage distance: "
min_dist = gets.chomp.to_f

# Calculate if the radius can fit in the hall with the minimum distance of the passage
circun = (hall_size / 2) - min_dist

# Compare the calculated maximum radius with the radius and output the result
if circun >= radius
  puts "Yes, the stage can fit with a passage of #{min_dist}."
else
  puts "No, the stage cannot fit."
end
