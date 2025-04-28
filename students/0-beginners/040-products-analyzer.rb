# page 102
# csv is a built-in package coming with ruby
require 'csv'

products = CSV.read("./040-products-data-100.csv", headers: true)

puts products.headers
puts products.inspect
puts products.first.inspect
puts products.first["Name"]

# How to read out a csv?
# 

