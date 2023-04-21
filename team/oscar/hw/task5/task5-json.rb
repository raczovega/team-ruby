#Load gem titleize 
require 'titleize'
# Load the JSON library
require 'json'

# Read the entire file into memory as a string
file = File.read('latam.json') 
#converting a JSON object to a hash
data = JSON.parse(file) 

puts "Enter a city name:"
city = gets.chomp.titleize

#Initialize a variable to hold the country name
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