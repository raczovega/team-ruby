puts "Enter a number"
input = gets.chomp

if input.to_i > 0
  number_value = "positive"
elsif input.to_i < 0
  number_value = "negative"
else 
  number_value = "it's zero"
end

digit_count = input.gsub(/\D/, '').length

puts "#{number_value} #{digit_count}-digit"