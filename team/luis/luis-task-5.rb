country_dictionary = {
    "Ukraine" => ["Kiev", "Lviv", "Odessa", "Kharkiv", "Dnipro"],
    "Poland" => ["Warsaw", "Krakow", "Gdansk", "Wroclaw", "Poznan"],
    "Bulgaria" => ["Sofia", "Plovdiv", "Varna", "Burgas", "Ruse"],
    "USA" => ["New York", "Los Angeles", "Chicago", "Houston", "Miami"],
    "Canada" => ["Toronto", "Montreal", "Vancouver", "Calgary", "Ottawa"],
    "Germany" => ["Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt"],
    "Singapore" => ["Singapore City", "Jurong", "Tampines", "Bishan", "Pasir Ris"],
    "Mexico" => ["Mexico City", "Guadalajara", "Monterrey", "Tijuana", "Puebla"],
    "Romania" => ["Bucharest", "Cluj-Napoca", "Timisoara", "Iasi", "Constanta"],
    "Colombia" => ["Bogota", "Medellin", "Cali", "Barranquilla", "Cartagena"],
    "Chile" => ["Santiago", "Valparaiso", "Concepcion", "Antofagasta", "Vina del Mar"]
}

puts "Enter a city name and I will show you the country: "

city_typed = gets.chomp 

is_found = false
country_found = nil 

country_dictionary.each do |country, city|
    if (city.include?(city_typed))
        is_found = true
        country_found = country
        break
    end
end

if is_found
    puts "The city #{city_typed} is located in #{country_found}"
else
    puts "City not found, please try again"
end