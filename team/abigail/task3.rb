puts "Enter a year:"
yr=gets.chomp.to_i

#conditions for a intercalary year
if (yr%400==0)
    puts "Intercalary year"

elsif (yr%4==0 && yr%100!=0)
    puts "Intercalary year"

else
    puts "Not an intercalary year"
    
end

#century calculation
cent=(yr/100)+1
puts "Century #{cent}"