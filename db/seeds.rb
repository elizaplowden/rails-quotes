# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database"
Quote.destroy_all
puts "Database cleaned"

url = "https://zenquotes.io/api/random"

quote_serialized = open(url).read
quotes = JSON.parse(quote_serialized)
quotes.each do |quote|
  puts "Creating quote"
  Quote.create(
    quote: quote["q"],
    author:  quote["a"]
    )
end

puts "Quotes created"
