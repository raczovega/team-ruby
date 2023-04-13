# Generate a random integer between 0 and 100
answer = rand(0...100)

i = 0 

while i < 10 do
    puts "Guess the number between 0 and 100"
    number_guess = gets.chomp.to_i

    i += 1


    if number_guess == answer
        puts "Number guessed!"
        break
    end 

    if answer > number_guess
        puts "The number is higher than #{number_guess}"
    else 
        puts "The number is lower than #{number_guess}"
    end

    puts "#{10-i} out of 10 attemps left"

    if i == 10 && number_guess != answer 
        puts "The number was #{answer}"
    end

end