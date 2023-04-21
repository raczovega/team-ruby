#Load gem titleize
require 'titleize'

# Dictionary of LATAM countries and major cities in each country
latam_cities = {
  "Argentina" => ["Buenos Aires", "Cordoba", "Rosario"],
  "Brazil" => ["Sao Paulo", "Fortaleza", "Brasilia"],
  "Chile" => ["Santiago", "Valparaiso", "Concepción"],
  "Colombia" => ["Bogota", "Medellin", "Cali"],
  "Mexico" => ["Mexico City", "Guadalajara", "Monterrey"],
  "Peru" => ["Lima", "Cusco", "Arequipa"],
  "Uruguay" => ["Montevideo", "Salto", "Minas"]
}

# Get user input for a city
print "Enter a city: "
#city = gets.chomp.titleize
city = gets.chomp.to_s
# Loop through each country to find the city entered by the user
latam_cities.each do |country, cities|
  if cities.include?(city)
    puts "#{city} is in #{country}."
    break # Exit the loop once the city is found
  end
end
