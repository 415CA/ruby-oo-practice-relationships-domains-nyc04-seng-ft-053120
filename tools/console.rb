require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# Airbnb
# Listing.new(city)
# Guest(guest)
# Trip(listing, guest)

# l1 = Listing.new('Brooklyn')
# l2 = Listing.new('Bronx')
# l3 = Listing.new('Queens')
# l4 = Listing.new('Manhattan')
# l5 = Listing.new('Staten Island')
# l6 = Listing.new('Brooklyn')
# l7 = Listing.new('Brooklyn')

# g1 = Guest.new('Chris')
# g2 = Guest.new('Caitlin')
# g3 = Guest.new('Rocco')
# g4 = Guest.new('Nona')
# g5 = Guest.new('Pones')

# t1 = Trip.new('Brooklyn', 'Chris')
# t2 = Trip.new('Bronx', 'Caitlin')
# t3 = Trip.new('Queens', 'Rocco')
# t4 = Trip.new('Manhattan', 'Nona')
# t5 = Trip.new('Staten Island', 'Pones')
# t6 = Trip.new('Manhattan', 'Chris')

binding.pry
puts 'Pry'
Pry.start
