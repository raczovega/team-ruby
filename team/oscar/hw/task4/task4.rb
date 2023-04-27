# Generate a random number from 0 to 100
number = rand(101)

attempts = 0
max_attempts = 10

# Loop until the correct number or reaches the maximum number of attempts
loop do
  # Ask the user for their guess
  print "Guess the number (0-100): "
  guess = gets.chomp.to_i
  
  # Increment the number of attempts
  attempts += 1
  
  # Compare the user's guess to the number
  if guess == number
    puts "Congratulations! You guessed the secret number in #{attempts} attempts."
    break  # Exit the loop
  elsif guess < number
    puts "Your guess is too low."
  else
    puts "Your guess is too high."
  end
  
  # Check if the maximum number of attempts has been reached
  if attempts == max_attempts
    puts "Sorry, you did not guess the number in time."
    break  # Exit the loop
  end
end
