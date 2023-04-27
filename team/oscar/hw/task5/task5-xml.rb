require 'rexml/document'

file = File.new("latam.xml")
doc = REXML::Document.new(file)

puts "Enter a city name:"
city = gets.chomp.capitalize

country = nil

# Loop through each country to find the city entered by the user
doc.elements.each("countries/country") do |c|
  if c.elements["city[text()='#{city}']"]
    country = c.attributes["name"]
    break # Exit the loop once the country is found
  end
end

if country
  puts "#{city} is in #{country}."
else
  puts "The city #{city} was not found in the list of countries."
end
