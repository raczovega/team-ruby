require 'json'

file = File.read('latam.json')
data = JSON.parse(file)

puts "Enter a city name:"
city = gets.chomp.capitalize.to_s

country = nil

# Loop through each country to find the city entered by the user
data['countries'].each do |c|
  if c['cities'].include?(city)
    country = c['name']
    break # Exit the loop once the country is found
  end
end

if country
  puts "#{city} is in #{country}."
else
  puts "The city #{city} was not found in the list of countries."
end