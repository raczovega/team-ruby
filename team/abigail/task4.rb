random=rand(0...100)

i=0

while (i<10)
    n=i+1
    puts "Guess the number between 0 and 100. Attemp #{n}"
    num=gets.chomp.to_i
    i+=1

    if (num==random)
        puts "You guessed the correct number!"
        break

    elsif (num>100)
        puts "Invalid input"
        break
       
    elsif (num<random)
        puts "The number is higher than #{num}"

    else
        puts "The number is less than #{num}"  
        
    end

end

if (i==10) && (num!=random)
    puts "You have exceeded the number of attempts. The answer is #{random}."
