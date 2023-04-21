#Require the REXML and titleize gems
require 'rexml/document'
require 'titleize'

# Open and read the XML file
file = File.new("latam.xml")
doc = REXML::Document.new(file)

## Ask the user for a city name
puts "Enter a city name:"
city = gets.chomp.titleize

#Initialize variable for storing country name
country = nil

# Loop through each country to find the city entered by the user
doc.elements.each("countries/country") do |c|
  if c.elements["city[text()='#{city}']"]
     # If the city is found, store the name of the country
    country = c.attributes["name"]
    break # Exit the loop once the country is found
  end
end

if country
  puts "#{city} is in #{country}."
else
  puts "The city #{city} was not found in the list of countries."
end
