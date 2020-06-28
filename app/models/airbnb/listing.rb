class Listing
  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    Trips.all.map {|trip| trip.listing == self}
  end

  def trip_count
    self.trips.length
  end

  def self.find_all_by_city(city)
    Listing.all.select { |listing| listing.city == city }
  end

  def self.most_popular
    self.all.max_by { |listing| listing.trip_count }
  end
end
