#Ask user for a number from 0 to 9
print "Enter number from 0 to 9: "
number = gets.chomp.to_i

#Keyboard Array
keychars = ["!","@","#","$","%","&","/","(",")","="]

#Output
puts "The keyboard character for #{number} is #{keychars[number]}"