require 'builder'

name = ARGV[0]
email = ARGV[1]
message = ARGV[2]

xml = Builder::XmlMarkup.new(indent: 2)
xml.instruct!
xml.contact_form do |form|
  form.name(name)
  form.email(email)
  form.message(message)
end

puts xml
