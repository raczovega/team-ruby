require 'sinatra'
require 'sinatra/reloader'
require 'nokogiri'

get '/' do
  erb :index
end

post '/submit' do
  name = params[:name]
  email = params[:email]
  message = params[:message]

  builder = Nokogiri::XML::Builder.new do |xml|
    xml.contact_form do
      xml.name name
      xml.email email
      xml.message message
    end
  end

  @xml = builder.to_xml
  erb :result
end
