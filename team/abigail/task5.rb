#Create a dictionary with the keys of which are the countries and the values of which are a list of the major cities of that country.
#When user enters the city, the program should display the country in which it is located


countries_dictionary = {          
  Mexico: ["Mexico City","Tijuana","Monterrey","Guadalajara","Puebla","Nuevo Leon","Veracruz","Ciudad Juarez","Queretaro"],
  Colombia:["Medellin","Bogota","Cartagena","Cali","Barranquilla","Perreira","Bucaramanga","Cucuta","Popayan","Manizalez"], 
  Argentina: ["Buenos Aires","Rosario","Mar de Plata","Salta","Cordoba","Mendoza","Zarate","San Rafael"],
  Brasil: ["Sao Paulo","Rio de Janeiro","Brasilia","Salvador","Fortaleza","Belo Horizonte", "Manaus"],
  USA: ["Ney York","Chicago","Los Angeles", "San Diego","Phoenix, Houston","San Antonio", "Philadelphia","Boston"],
  Canada: ["Toronto","Montreal","Vancouver","Calgary","Edmonton","Hamilton","Ottawa","Quebec"],
  Germany: ["Berlin","Hamburg","Munich","Cologne","Dortmund","Bremen","Dresden","Bochum"],
  France: ["Paris","Lyon","Bordeaux","Nice","Strasbourg","Marseille","Nantes","Montpellier"],
  Italy: ["Milan","Rome","Turin","Venice","Bologna","Florence","Genoa","Verona","Palermo","Bari"],
  Spain: ["Madrid","Barcelona","Valencia","Seville","Granada","Bilbao","Malaga","Zaragoza","Salamanca"],
  Ukraine: ["Rivne","Kyiv","Kharkiv","Odesa","Lviv","Donetsk","Dnipro","Kherson","Mariupol","Zaporizhzhia"],
  Denmark: ["Copenhagen","Arhus","Aalborg","Odense","Roskilde","Esbjerg","Skagen","Vejle","Rander"],
  Australia: ["Sidney","Melbourne","Brisbane","Canberra","Adelaide","Perth","Darwin","Hobart","Gold Coast"]
}

puts "Enter a city:"
input_city=gets.chomp
city_founded=0

countries_dictionary.each do |country, city|
  
  if (city.include?(input_city))
  puts "#{input_city} is located in #{country}."
  city_founded+=1
  break
  end
  
end

if (city_founded==0)
  puts "The given city is not included in the dictionary."
end







  
 
