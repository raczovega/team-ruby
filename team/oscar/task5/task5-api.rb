require "uri"
require "net/http"
require "openssl"
require "json"

url = URI("https://wft-geo-db.p.rapidapi.com/v1/geo/cities")

puts "Enter a city name:"
city = gets.chomp.capitalize

params = { "namePrefix" => city }

url.query = URI.encode_www_form(params)

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = "e582cf00c1msh9ba11bc11689379p1598acjsnd135dd389cd1"
request["X-RapidAPI-Host"] = "wft-geo-db.p.rapidapi.com"

response = http.request(request)

data = JSON.parse(response.read_body)

if data["data"].any?
  country = data["data"].first["country"]
  puts "#{city} is in #{country}."
else
  puts "The city #{city} was not found in the database."
end
